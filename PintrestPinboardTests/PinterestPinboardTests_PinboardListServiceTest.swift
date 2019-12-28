//
//  PinterestPinboardTests_PinboardListService.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_PinboardListServiceTest: XCTestCase {
    
    var sut: PinboardListService!
    
    override func setUp() {
      super.setUp()
      sut = PinboardListService()
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testPinboardListService() {
        let expectation = self.expectation(description: "Download Pinboard Items")
        sut.getPins {  (result) in
 
                switch result {
                case .success(let pins):
                    XCTAssertEqual(pins.count, 10, "Pinboard Items Fetched successfully")
                    expectation.fulfill()
                    break
                case .failure(_):
                    expectation.fulfill()
                    break
                }
         }
        waitForExpectations(timeout: TimeInterval(Int(Constants.testWebserviceTimeInterval)!), handler: nil)
    }
}

