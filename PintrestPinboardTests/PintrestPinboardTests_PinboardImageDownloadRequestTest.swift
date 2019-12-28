//
//  PintrestPinboardTests_PinboardImageDownloadRequest.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PintrestPinboardTests_PinboardImageDownloadRequestTest: XCTestCase {
    
    var sut: PinboardnImageDownloadRequest!
    
    override func setUp() {
      super.setUp()
        sut = PinboardnImageDownloadRequest(from: "https://images.unsplash.com/photo-1464550883968-cec281c19761", uniqueIdentifier: "0")
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testPinboardnImageDownloadRequest() {
        XCTAssertEqual(sut.url, "https://images.unsplash.com/photo-1464550883968-cec281c19761")
        XCTAssertEqual(sut.identifier, "0")
    }
}

