//
//  PintrestPinboardTest_PinboardItem.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PintrestPinboardTest_PinboardItemTest: XCTestCase {
    
    var sut: PinboardItem!
    
    override func setUp() {
      super.setUp()
        sut = PinboardItem(id: "0", created_at: "2019-12-28 17:26", width: 250, height: 250, color: "Red", likes: 1, liked_by_user: true, user: User(id: "0", username: "Zain", name: "Zain", profile_image: Profile_image(small: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=32&w=32&s=63f1d805cffccb834cf839c719d91702", medium: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=64&w=64&s=ef631d113179b3137f911a05fea56d23", large: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=128&w=128&s=622a88097cf6661f84cd8942d851d9a2"), links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris")), current_user_collections: [], urls: Urls(raw: "https://images.unsplash.com/photo-1464550883968-cec281c19761", full: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=4b142941bfd18159e2e4d166abcd0705", regular: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=1881cd689e10e5dca28839e68678f432", small: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=400&fit=max&s=d5682032c546a3520465f2965cde1cec", thumb: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=200&fit=max&s=9fba74be19d78b1aa2495c0200b9fbce"), categories: [Categories(id: 0, title: "People", photo_count: 2, links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))], links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))
    }
      
    override func tearDown() {
      sut = nil
      super.tearDown()
    }
   
    func testPinboardItem() {
        let pinboardItem = PinboardItem(id: "0", created_at: "2019-12-28 17:26", width: 250, height: 250, color: "Red", likes: 1, liked_by_user: true, user: User(id: "0", username: "Zain", name: "Zain", profile_image: Profile_image(small: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=32&w=32&s=63f1d805cffccb834cf839c719d91702", medium: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=64&w=64&s=ef631d113179b3137f911a05fea56d23", large: "https://images.unsplash.com/profile-1464495186405-68089dcd96c3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=128&w=128&s=622a88097cf6661f84cd8942d851d9a2"), links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris")), current_user_collections: [], urls: Urls(raw: "https://images.unsplash.com/photo-1464550883968-cec281c19761", full: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=4b142941bfd18159e2e4d166abcd0705", regular: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=1881cd689e10e5dca28839e68678f432", small: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=400&fit=max&s=d5682032c546a3520465f2965cde1cec", thumb: "https://images.unsplash.com/photo-1464550883968-cec281c19761?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=200&fit=max&s=9fba74be19d78b1aa2495c0200b9fbce"), categories: [Categories(id: 0, title: "People", photo_count: 2, links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))], links: Links(profile: "https://api.unsplash.com/users/nicholaskampouris/photos", html: "http://unsplash.com/@nicholaskampouris", download: "https://api.unsplash.com/users/nicholaskampouris"))
        XCTAssertEqual(sut, pinboardItem)
    }
}

