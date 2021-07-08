//
//  BaseTest.swift
//  KalculatorUITests
//
//  Created by Arpit Dixit on 07/07/21.
//  Copyright © 2021 Jogendra Singh. All rights reserved.
//

import XCTest

class Logger {
    func log(_ mlog: String) {
        NSLog(mlog)
    }
}

public class BaseTest {
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    let log = Logger().log
    required init(timeout: TimeInterval = 10, completion: Completion = nil) {
        log("waiting \(timeout)s for \(String(describing: self)) existence")
        XCTAssert(rootElement.waitForExistence(timeout: timeout), "Page \(String(describing: self)) waited, but not loaded")
        completion?()
    }
    
    var rootElement: XCUIElement {
        fatalError("subclass should override rootElement")
    }
    
    // NavigationBar
    func navBar(_ name: String) -> XCUIElement {
        return app.navigationBars[name]
    }
    
    // TableView
    func tableView(_ name: String) -> XCUIElement {
        return app.tables[name]
    }
    
    // CollectionView
    func collectionView(_ name: String) -> XCUIElement {
        return app.collectionViews[name]
    }
    
    // SecureField
    func secureField(_ name: String) -> XCUIElement {
        return app.secureTextFields[name]
    }
    
    // TextField
    func textField(_ name: String) -> XCUIElement {
        return app.textFields[name]
    }
    
    // TextView
    func textView(_ name: String) -> XCUIElement {
        return app.textViews[name]
    }
    
    // Text
    func text(_ name: String) -> XCUIElement {
        return app.staticTexts[name]
    }
    
    // Buttons
    func button(_ name: String) -> XCUIElement {
        return app.buttons[name]
    }
}
