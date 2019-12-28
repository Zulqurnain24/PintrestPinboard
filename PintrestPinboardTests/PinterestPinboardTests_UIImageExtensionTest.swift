//
//  PinterestPinboardTests_UIImageExtension.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_UIImageExtensionTest: XCTestCase {
    
    var sut:UIImage!
    
    override func setUp() {
      super.setUp()
      sut = UIImage(named: "small")
    }
      
    override func tearDown() {
      super.tearDown()
    }
   
    func testScaleTo() {
        XCTAssertEqual(sut.scaleTo(CGSize(width: 128, height: 128)).size, UIImage(named: "large")!.size)
       
    }
}
