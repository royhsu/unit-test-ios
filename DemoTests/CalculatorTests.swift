//
//  CalculatorTests.swift
//  DemoTests
//
//  Created by Roy Hsu on 2018/10/17.
//  Copyright © 2018 TinyWorld. All rights reserved.
//

import XCTest

@testable import Demo

class CalculatorTests: XCTestCase {
    
    func testAdd() {
        
        let calculator = Calculator()
        
        let result = calculator.add(
            8,
            9
        )
        
        XCTAssertEqual(
            result,
            17
        )
        
    }
    
}
