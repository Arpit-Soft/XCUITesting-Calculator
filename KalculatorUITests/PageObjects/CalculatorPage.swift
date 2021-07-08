//
//  CalculatorPage.swift
//  KalculatorUITests
//
//  Created by Arpit Dixit on 07/07/21.
//  Copyright © 2021 Jogendra Singh. All rights reserved.
//

import XCTest

public class CalculatorPage: BaseTest {
    
    override var rootElement: XCUIElement {
        return app.otherElements["calculatorView"]
    }
    
    // Page Element
    lazy var oneButton = app.staticTexts["1"]
    lazy var twoButton = app.staticTexts["2"]
    
    @discardableResult
    func tapOne(completion: Completion = nil) -> Self {
        log("tap the one Button")
        oneButton.tap()
        return self
    }
    
    @discardableResult
    func tapTwo(completion: Completion = nil) -> Self {
        log("tap the two Button")
        twoButton.tap()
        return self
    }
}
