//
//  Constants.swift
//  PintrestPinboard
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import Foundation

/// Constants used with in the application
 enum Constants {
    internal static let boardCellIdentifier = String(describing: PinboardListCollectionViewCell.self)
    internal static let splashScreenImageViewIdentifier = String(describing: SplashScreenImageView.self)
    internal static let splashAnimationTimeInSeconds = String(describing: "9")
    internal static let splashToPinboardScreenTransition = String(describing: "pinboardSegue")
    internal static let pinboardImageURL = String(describing: "http://pastebin.com/raw/wgkJgazE")
    internal static let pinboardListTitle = String(describing: "PINBOARD LIST")
    internal static let pinboardImageDownloading = String(describing: "PINBOARD Image Downloading")
    internal static let collageAnimationImageSet = String(describing: "collage")
    internal static let collageAnimationMinIndex = String(describing: "1")
    internal static let collageAnimationMaxIndex = String(describing: "15")
    internal static let testWebserviceTimeInterval =
        String(describing: "6")
}

