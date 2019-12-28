//
//  PintrestPinboardTests_Categories.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PintrestPinboardTests_CategoriesTest: XCTestCase {
    
    var sut: Categories!
    
    override func setUp() {
      super.setUp()
      sut = Categories(id: 0, title: "People", photo_count: 2, links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testPinboardnImageDownloadRequest() {
        let categories = Categories(id: 0, title: "People", photo_count: 2, links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))
        XCTAssertEqual(sut, categories)
    }
}
