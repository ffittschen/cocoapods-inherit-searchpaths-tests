//
//  CocoaPodsDemoUITests.swift
//  CocoaPodsDemoUITests
//
//  Created by Florian Fittschen on 02.06.17.
//  Copyright © 2017 Florian Fittschen. All rights reserved.
//

import XCTest

class CocoaPodsDemoUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        app.launch()
    }
    
    func test_tap_changeTitleButton_updatesTheTitle() {
        // Arrange
        XCTAssert(app.staticTexts["Initial Text"].exists)
        XCTAssertFalse(app.staticTexts["CocoaPods"].exists)
        
        // Act
        app.buttons["changeTitleButton"].tap()
        
        // Assert
        XCTAssertFalse(app.staticTexts["Initial Text"].exists)
        XCTAssert(app.staticTexts["CocoaPods"].exists)
    }
    
}
