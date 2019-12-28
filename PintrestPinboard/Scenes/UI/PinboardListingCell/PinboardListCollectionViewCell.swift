//
//  PinboardListCollectionViewCell.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import UIKit

protocol PinboardListCollectionViewCellProtocol {
   /// Load animation
   func animateLoader()
   /// Halt animation
   func stopAnimateLoader()
   /// Populate view
   func populateView()
   /// Download pin image
   func downloadPinImage()
   /// Scale image with respect to the bounds
   func setImage(from data: Data, _ completionHandler: (() -> Void)?)
}

class PinboardListCollectionViewCell: UICollectionViewCell, PinboardListCollectionViewCellProtocol {

    @IBOutlet fileprivate weak var containerView: UIView!
    @IBOutlet fileprivate weak var imageView: UIImageView!
    @IBOutlet fileprivate weak var authorLabel: UILabel!
    @IBOutlet fileprivate weak var categoriesLabel: UILabel!
    internal let splashScreenImageView = Bundle.main.loadNibNamed(Constants.splashScreenImageViewIdentifier, owner: self, options: nil)?.last as! SplashScreenImageView
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 6
        containerView.layer.masksToBounds = true
        populateView()
    }
    
    func animateLoader() {
        splashScreenImageView.isHidden = false
        splashScreenImageView.configureAnimation()
        splashScreenImageView.startAnimating()
    }
    
    func stopAnimateLoader() {
        splashScreenImageView.stopAnimating()
        splashScreenImageView.isHidden = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        authorLabel.text = ""
        categoriesLabel.text = ""
        imageView.image = nil
        stopAnimateLoader()
    }
    
    var pinItem: PinboardItem? {
        didSet {
            populateView()
        }
    }
    
    func populateView() {
        splashScreenImageView.frame = self.contentView.frame
        if let pinItem = pinItem {
            authorLabel.text = pinItem.author
            categoriesLabel.text = pinItem.categoriesString
            downloadPinImage()
            self.contentView.addSubview(splashScreenImageView)
        self.contentView.bringSubviewToFront(splashScreenImageView)
        }
    }
    
    func downloadPinImage() {
        if let pinItemURL = pinItem?.urls?.raw {
            let pinImageDownloadService = PinboardnImageDownloadService()
            animateLoader()
            pinImageDownloadService.downloadPinImage(for: "\(tag)", from: pinItemURL) { [weak self] (result, urlPath) in
                
                guard let self = self else { return }
                
                self.stopAnimateLoader()
                if let pinItemURL = self.pinItem?.urls?.raw,
                    urlPath.elementsEqual(pinItemURL) {
                    
                    switch result {
                    case .success(let data):
                        self.setImage(from: data)
                    case .failure(_):
                        break
                    }
                }
            }
        }
    }
    
    func setImage(from data: Data, _ completionHandler: (() -> Void)? = nil) {
        let newSize = self.imageView.bounds.size
        
        DispatchQueue.global().async {
            
            let image = UIImage(data: data)?.scaleTo(newSize)
            DispatchQueue.main.async {
                self.imageView.image = image
                if completionHandler != nil {
                    completionHandler!()
                }
            }
        }
    }
}
