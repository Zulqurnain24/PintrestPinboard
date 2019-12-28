//
//  PinterestPinboardTests_PinBoardCustomLayout.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_PinBoardCustomLayoutTest: XCTestCase {
    
    var sut:PinBoardCustomLayout!
    
    override func setUp() {
      super.setUp()
      sut = PinBoardCustomLayout()
    }
      
    override func tearDown() {
      super.tearDown()
    }
   
    func testConstants() {
        XCTAssertEqual(sut.numberOfColumns, 2)
        XCTAssertEqual(sut.cellPadding, 6)
        XCTAssertEqual(sut.contentHeight, 0)
        XCTAssertEqual(sut.contentWidth, 0)
    }
}

