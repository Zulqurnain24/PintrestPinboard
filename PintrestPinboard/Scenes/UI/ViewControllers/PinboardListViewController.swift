//
//  ViewController.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//


import UIKit

protocol PinboardListViewControllerProtocol {
    /// For downloading pin board items from backend
    func getPinFromServer(_ completionHandler: (([PinboardItem]?) -> Void)?)
    /// Update collection on Pinboard Items request success
    func updateCollectionViewOnSuccessPinFetch()
    /// Setup UICollectionview
    func setupCollectionView()
    /// Setup Refresh control
    func setupRefreshControl()
    /// For refreshing Pinboard data
    func refreshPinData()
    /// Registering collectionview cell
    func registerCollectionViewCell()
}

class PinboardListViewController: UIViewController, PinboardListViewControllerProtocol {

    @IBOutlet weak var collectionView: UICollectionView!
    var pinItems: [PinboardItem] = []
    
    private lazy var refreshControl: UIRefreshControl = {
        let control = UIRefreshControl()
        control.tintColor = .white
        return control
    }()
    
    private let pinService = PinboardListService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        getPinFromServer()
    }
    
    func getPinFromServer(_ completionHandler: (([PinboardItem]?) -> Void)? = nil) {
        
        pinService.getPins { [weak self](result) in
            
            guard let self = self else { return }
            
            switch result {
            case .success(let pins):
                self.pinItems += pins
                DispatchQueue.main.async {
                    self.updateCollectionViewOnSuccessPinFetch()
                    if completionHandler != nil {
                        completionHandler!(pins)
                    }
                }
                break
            case .failure(_):
                if completionHandler != nil {
                    completionHandler!(nil)
                }
                break
            }
        }
    }
    
    func updateCollectionViewOnSuccessPinFetch() {
        
        if let layout = collectionView?.collectionViewLayout as? PinBoardCustomLayout {
            layout.prepare()
        }
        collectionView.reloadData()
        refreshControl.endRefreshing()
    }
    
    func setupCollectionView() {
        // Set the PinterestLayout delegate
        if let layout = collectionView?.collectionViewLayout as? PinBoardCustomLayout {
            layout.delegate = self
            layout.invalidateLayout()
        }
        
        collectionView.refreshControl = refreshControl
        registerCollectionViewCell()
        setupRefreshControl()
    }
    
    func setupRefreshControl() {
        refreshControl.addTarget(self, action: #selector(refreshPinData), for: .valueChanged)
    }
    
    @objc
    func refreshPinData() {
        pinService.cancelAllPendingRequest()
        pinItems = []
        collectionView.reloadData()
        getPinFromServer()
    }
    
    func registerCollectionViewCell() {
        let nib = UINib(nibName: Constants.boardCellIdentifier, bundle: Bundle.main)
        collectionView.register(nib, forCellWithReuseIdentifier: Constants.boardCellIdentifier)
    }
    
}

extension PinboardListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pinItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.boardCellIdentifier, for: indexPath) as? PinboardListCollectionViewCell {
            
            cell.tag = indexPath.row
            cell.pinItem = pinItems[indexPath.item]
            return cell
        }
        
        return UICollectionViewCell()
    }
}

extension PinboardListViewController : PinBoardCustomLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return getReducedHeightForItem(at: indexPath.row) + 32.33
    }
    
    func getReducedHeightForItem(at index: Int) -> CGFloat {
        
        let cellWidth = collectionView.contentSize.width / 2
        let width: CGFloat =  CGFloat(integerLiteral: pinItems[index].width ?? 0)
        let height: CGFloat = CGFloat(integerLiteral: pinItems[index].height ?? 0)
        
        let factor = width / cellWidth
        let reducedHeight = height / factor
        
        return reducedHeight
    }
}

extension PinboardListViewController : UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if scrollView.isReachToBottom() {
            getPinFromServer()
        }
    }
}



