//
//  PinterestPinboardTests_PinboardListViewControllerTests.swift
//  PintrestPinboardTests
//
//  Created by Mohammad Zulqarnain on 28/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PinterestPinboardTests_PinboardListViewControllerTests: XCTestCase {
 
    var sut: PinboardListViewController!
    let timeInterval = 10.0
    
    override func setUp() {
        sut = UIStoryboard(name: "PinboardList", bundle: nil).instantiateViewController(withIdentifier: "PinboardListViewController") as? PinboardListViewController
    }

    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }

    func testGetPinFromServer() {
        //Test splash view display logic
        sut.loadView()
        sut.viewDidLoad()
        sut.viewDidAppear(false)
        let expectation = self.expectation(description: "Download Pinboard Items")
        sut.getPinFromServer({ pins in
            XCTAssertEqual(pins?.count, 10)
            expectation.fulfill()
        })
        waitForExpectations(timeout: TimeInterval(Int(Constants.testWebserviceTimeInterval)!), handler: nil)
    }
}
