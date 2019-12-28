//
//  PintrestPinboardUITests.swift
//  PintrestPinboardUITests
//
//  Created by Mohammad Zulqarnain on 24/12/2019.
//  Copyright © 2019 Mohammad Zulqarnain. All rights reserved.
//

import XCTest
@testable import PintrestPinboard

class PintrestPinboardUITests: XCTestCase {
    
    let timeIntervalForInitialAnimation = 10
    let testInfiniteScrollUptil = 25
    
    let app = XCUIApplication()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app.launch()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        super.tearDown()
    }

    //UseCase - Test Refresh Control
    func testRefreshControl() {
        let collectionView = app.collectionViews.element(boundBy: 0).firstMatch
         let exists = NSPredicate(format: "exists == 1")

         expectation(for: exists, evaluatedWith: collectionView, handler: nil)
         waitForExpectations(timeout: TimeInterval(timeIntervalForInitialAnimation), handler: nil)
        let firstCell = collectionView.cells.firstMatch
        let startPosition = CGPoint(x:200, y:0)
        let endPosition = CGPoint(x:200, y:300)
        let start = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: startPosition.x, dy: startPosition.y))
        let finish = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: endPosition.x, dy: endPosition.y))
        start.press(forDuration: 0, thenDragTo: finish)
    }
    
    //UseCase - Test CollectionView Swipe Up and Swipe Down
    func testOptionCollectionViewSwipe() {
        let collectionView = app.collectionViews.element(boundBy: 0).firstMatch
        let exists = NSPredicate(format: "exists == 1")

        expectation(for: exists, evaluatedWith: collectionView, handler: nil)
        waitForExpectations(timeout: TimeInterval(timeIntervalForInitialAnimation), handler: nil)
       
        collectionView.tap()
        collectionView.swipeUp()
        collectionView.swipeDown()
        for _ in 0...testInfiniteScrollUptil {
            collectionView.swipeUp()
        }
                
   }
   
}
