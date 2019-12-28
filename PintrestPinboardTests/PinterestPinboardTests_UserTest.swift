//
//  PinterestPinboardTests_User.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_UserTest: XCTestCase {
    
    var sut: User!
    
    override func setUp() {
      super.setUp()
      sut = User(id: "0", username: "Zain", name: "Zain", profile_image: Profile_image(small: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=32&w=32&s=63f1d805cffccb834cf839c719d91702", medium: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=64&w=64&s=ef631d113179b3137f911a05fea56d23", large: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=128&w=128&s=622a88097cf6661f84cd8942d851d9a2"), links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testProfileImage() {
        let user = User(id: "0", username: "Zain", name: "Zain", profile_image: Profile_image(small: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=32&w=32&s=63f1d805cffccb834cf839c719d91702", medium: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=64&w=64&s=ef631d113179b3137f911a05fea56d23", large: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=128&w=128&s=622a88097cf6661f84cd8942d851d9a2"), links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))
        XCTAssertEqual(sut, user)
    }
}
