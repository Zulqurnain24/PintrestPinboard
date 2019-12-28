//
//  PinterestPinboardTests_PinboardListCollectionViewCellTests.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_PinboardListCollectionViewCellTests: XCTestCase {
    
    var sut: PinboardListCollectionViewCell!
    
    override func setUp() {
      super.setUp()
      sut = PinboardListCollectionViewCell(frame: CGRect(x: 0, y: 0, width: 350, height: 500))
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }

    func testAnimation() {
        sut.animateLoader()
        XCTAssertEqual(sut.splashScreenImageView.isAnimating, true)
        sut.stopAnimateLoader()
        XCTAssertEqual(sut.splashScreenImageView.isAnimating, false)
    }

}
