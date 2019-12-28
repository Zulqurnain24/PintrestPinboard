//
//  SplashScreenImageView.swift
//  FlickrSearchAssignment
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import UIKit

protocol SplashScreenImageViewProtocol {
    /// Configure splash animation
    func configureAnimation()
    /// Begin animation and after completing the animation call completionHandler
    func initiateAnimation( _ completionHandler: (() -> Void)?)
}

final class SplashScreenImageView: UIImageView, SplashScreenImageViewProtocol {

    internal var duration = 0.0
    internal let imgListArray: NSMutableArray = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureAnimation() {
        var animationImageName = ""
        animationImageName = Constants.collageAnimationImageSet
        
        guard let duration = Double(Constants.splashAnimationTimeInSeconds) as Double?,
              let minIndex = UInt(Constants.collageAnimationMinIndex) as UInt?,
              let maxIndex = UInt(Constants.collageAnimationMaxIndex)  as UInt? else {return}
        self.duration = duration
        for countValue in minIndex...maxIndex
        {
            guard let strImageName = "\(animationImageName)\(countValue).png" as String?,
                  let image  = UIImage(named: strImageName) else { return }
            
            imgListArray.add(image)
        }
        self.backgroundColor = .clear
        self.animationImages = imgListArray as? [UIImage]
        self.animationDuration = TimeInterval(duration)
    }
    
    func initiateAnimation( _ completionHandler: (() -> Void)? = nil) {
        self.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + (duration), execute: {
            self.stopAnimating()
           if completionHandler != nil {
              completionHandler!()
           }
        })
    }
    
}
