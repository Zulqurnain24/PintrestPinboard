//
//  SplashScreenViewController.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import UIKit

protocol SplashScreenViewControllerProtocol {
    /// For setting up animation for time defined in Constants.splashToPinboardScreenTransition enum
    func setupViews(_ completionHandler: (() -> Void)?)
    /// For segue to the pinboard collectionview
    func performSegueToTutorialViewController()
}

final class SplashScreenViewController: UIViewController {

    @IBOutlet weak var splashAnimationView: UIView!

    let splashScreenImageView = Bundle.main.loadNibNamed(Constants.splashScreenImageViewIdentifier, owner: self, options: nil)?.last as! SplashScreenImageView
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

}

extension SplashScreenViewController: SplashScreenViewControllerProtocol {
   
    func setupViews(_ completionHandler: (() -> Void)? = nil) {
    
        splashScreenImageView.configureAnimation()
        splashAnimationView.addSubview(splashScreenImageView)
        splashScreenImageView.initiateAnimation({
            if completionHandler != nil {
                completionHandler!()
            }
            self.performSegueToTutorialViewController()
        })
    }
    
    func performSegueToTutorialViewController() {
        performSegue(withIdentifier: Constants.splashToPinboardScreenTransition, sender: self)
    }

}

