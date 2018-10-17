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

class CaculatorTests: XCTestCase {
    
    func testAdd() {
        
        let calculator = Calculator()
        
        XCTAssertEqual(
            calculator.add(8, 9),
            17
        )
        
    }
    
}
