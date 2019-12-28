//
//  PintrestPinboardTests_PinboardListRequest.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PintrestPinboardTests_PinboardListRequestTest: XCTestCase {
    
    var sut: PinboardnImageDownloadRequest!
    
    override func setUp() {
      super.setUp()
        sut = PinboardnImageDownloadRequest(from: "https://images.unsplash.com/photo-1464550838636-1a3496df938b?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=ea8f203f18a51214459deec7301f177f", uniqueIdentifier: "H_M4dX_F1LQ")
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testImageDownloadRequest() {
        XCTAssertEqual(sut.url, "https://images.unsplash.com/photo-1464550838636-1a3496df938b?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=ea8f203f18a51214459deec7301f177f")
        XCTAssertEqual(sut.identifier, "H_M4dX_F1LQ", "Test Image Download Request")
    }
}

