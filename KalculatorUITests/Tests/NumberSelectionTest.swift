//
//  NumberSelectionTest.swift
//  KalculatorUITests
//
//  Created by Arpit Dixit on 07/07/21.
//  Copyright © 2021 Jogendra Singh. All rights reserved.
//

import XCTest

class NumberSelectionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        
    }
    
    func testSelectAllButtons() {
        CalculatorPage().tapOne()
        CalculatorPage().tapTwo()
    }
}
