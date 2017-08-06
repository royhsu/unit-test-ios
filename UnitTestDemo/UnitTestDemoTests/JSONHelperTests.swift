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

final class JSONHelperTests: XCTestCase {
    
    // MARK: Property
    
    var helper: JSONHelper?
    
    // MARK: Set Up
    
    override func setUp() {
        super.setUp()
        
        helper = JSONHelper()
        
    }
    
    override func tearDown() {
        
        helper = nil
        
        super.tearDown()
    }
    
    // MARK: Post
    
    func testLoadJSON() {
        
        let promise = expectation(description: "Load local json file.")
        
        helper!.loadJSON(name: "Demo") { result in
            
            promise.fulfill()
            
            switch result {
                
            case .success(let json):
                
                let object = json as? [String: Any]
                
                XCTAssertNotNil(object)
                
                let message = object!["message"] as? String
                
                XCTAssertEqual(
                    message,
                    "hello world"
                )
            
            case .failure(let error):
                
                XCTFail("\(error)")
                
            }
            
        }
        
        wait(for: [ promise ], timeout: 10.0)
        
    }
    
}
