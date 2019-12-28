//
//  PinterestPinboardTest_Links.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTest_LinksTest: XCTestCase {
    
    var sut: Links!
    
    override func setUp() {
      super.setUp()
      sut = Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris")
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testLinks() {
        let links = Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris")
        XCTAssertEqual(sut, links)
    }
}
