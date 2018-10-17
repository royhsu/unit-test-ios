//
//  JSONHelperTests.swift
//  UnitTestDemo
//
//  Created by Roy Hsu on 06/08/2017.
//  Copyright © 2017 TinyWorld. All rights reserved.
//

// MARK: - JSONHelperTests

import XCTest

@testable import UnitTestDemo

class JSONHelperTests: XCTestCase {
    
    var helper: JSONHelper?
    
    override func setUp() {
        
        super.setUp()
        
        helper = JSONHelper()
        
    }
    
    override func tearDown() {
        
        helper = nil
        
        super.tearDown()
        
    }
    
    func testLoadJSON() {
        
        let promise = expectation(description: "Load local json file.")
        
        helper!.loadJSON(
            name: "Demo",
            from: Bundle(for: JSONHelperTests.self)
        ) { result in
            
            promise.fulfill()
            
            switch result {
                
            case .success(let json):
                
                let json = json as? [String: Any]
                
                let message = json?["message"] as? String
                
                XCTAssertEqual(
                    message,
                    "hello world"
                )
            
            case .failure(let error): XCTFail("\(error)")
                
            }
            
        }
        
        wait(
            for: [ promise ],
            timeout: 10.0
        )
        
    }
    
}
