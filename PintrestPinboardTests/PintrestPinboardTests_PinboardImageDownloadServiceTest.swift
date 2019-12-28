//
//  PintrestPinboardTests_PinboardImageDownloadService.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PintrestPinboardTests_PinboardImageDownloadServiceTest: XCTestCase {
    
    var sut: PinboardnImageDownloadService!
    
    override func setUp() {
      super.setUp()
        sut = PinboardnImageDownloadService()
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testImageDownloadService() {
        let expectation = self.expectation(description: "Download Pinboard Items")
        sut.downloadPinImage(for: "0", from: "https://images.unsplash.com/photo-1464550883968-cec281c19761") { (result, urlPath) in
            XCTAssertEqual(urlPath, "https://images.unsplash.com/photo-1464550883968-cec281c19761")
            expectation.fulfill()
        }
        waitForExpectations(timeout: TimeInterval(Int(Constants.testWebserviceTimeInterval)!), handler: nil)
    }
}

