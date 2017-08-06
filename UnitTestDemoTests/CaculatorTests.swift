//
//  CaculatorTests.swift
//  UnitTestDemo
//
//  Created by Roy Hsu on 06/08/2017.
//  Copyright © 2017 TinyWorld. All rights reserved.
//

// MARK: - CaculatorTests

import XCTest

@testable import UnitTestDemo

final class CaculatorTests: XCTestCase {
    
    // MARK: Property
    
    var calculator: Calculator?
    
    // MARK: Set Up
    
    override func setUp() {
        super.setUp()
        
        calculator = Calculator()
        
    }
    
    override func tearDown() {
        
        calculator = nil
        
        super.tearDown()
    }
    
    // MARK: Add
    
    func testAdd() {
        
        XCTAssertEqual(
            calculator!.add(3, 5),
            8
        )
        
    }
    
}
