//
//  ViewControllerTests.swift
//  CocoaPodsDemo
//
//  Created by Florian Fittschen on 02.06.17.
//  Copyright © 2017 Florian Fittschen. All rights reserved.
//

import XCTest
@testable import CocoaPodsDemo

class ViewControllerTests: XCTestCase {
    
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        sut = ViewController.loadFromStoryboard()
        
        _ = sut.view
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testSutIsntNil() {
        XCTAssertNotNil(sut, "Not Nil")
    }
}
