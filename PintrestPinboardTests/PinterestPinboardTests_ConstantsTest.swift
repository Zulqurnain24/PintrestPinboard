//
//  PinterestPinboardTests_Constants.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_Constants: XCTestCase {

   func testEnums() {
    //Test Constants enums
    XCTAssertEqual(Constants.boardCellIdentifier, "\(PinboardListCollectionViewCell.self)")
    XCTAssertEqual(Constants.splashScreenImageViewIdentifier, "\(SplashScreenImageView.self)")
    
    XCTAssertEqual(Constants.splashAnimationTimeInSeconds, "9")
    XCTAssertEqual(Constants.splashToPinboardScreenTransition, "pinboardSegue")
       XCTAssertEqual(Constants.pinboardImageURL, "http://pastebin.com/raw/wgkJgazE")
    XCTAssertEqual(Constants.pinboardListTitle, "PINBOARD LIST")
    XCTAssertEqual(Constants.pinboardImageDownloading, "PINBOARD Image Downloading")
    XCTAssertEqual(Constants.collageAnimationImageSet, String(describing: "collage"))
    XCTAssertEqual(Constants.collageAnimationMinIndex, String(describing: "1"))
    XCTAssertEqual(Constants.collageAnimationMaxIndex, String(describing: "15"))
    XCTAssertEqual(Constants.testWebserviceTimeInterval, String(describing: "6"))
   }
}

