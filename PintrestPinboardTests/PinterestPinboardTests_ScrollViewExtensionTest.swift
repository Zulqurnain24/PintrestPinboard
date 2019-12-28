//
//  PinterestPinboardTests_ScrollViewExtension.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_ScrollViewExtensionTest: XCTestCase {
    
    var sut: UIScrollView!
    
    override func setUp() {
      super.setUp()
      sut = UIScrollView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 250, height: 1000)))
    }
      
    override func tearDown() {
      super.tearDown()
    }
   
    func testScaleTo() {
        let sampleView1 = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 250, height: 250)))
         let sampleView2 = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 250, height: 250)))
         let sampleView3 = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 250, height: 250)))
        sut.addSubview(sampleView1)
        sut.addSubview(sampleView2)
        sut.addSubview(sampleView3)
        XCTAssertEqual(sut.isReachToBottom(), true)
       
    }
}
