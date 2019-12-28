//
//  PinterestPinboardTests_SplashScreenViewControllerTest.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_SplashScreenViewControllerTest: XCTestCase {
 
    var sut: SplashScreenViewController!
    let timeInterval = 10.0
    
    override func setUp() {
        sut = UIStoryboard(name: "PinboardList", bundle: nil).instantiateViewController(withIdentifier: "SplashScreenViewController") as? SplashScreenViewController
    }

    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }

    func testSplashScreenViewController() {
        //Test splash view display logic
        sut.loadView()
        sut.viewDidLoad()
        sut.viewDidAppear(false)
        //Test splash view animation logic
        let expectation = self.expectation(description: "Segue After Animation")
        sut.setupViews({
            expectation.fulfill()
        })
        waitForExpectations(timeout: timeInterval, handler: nil)
        XCTAssertEqual(sut.splashScreenImageView.imgListArray.count, 30)
        
    }

}
