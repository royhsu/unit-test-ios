//
//  JSONHelperTests.swift
//  DemoTests
//
//  Created by Roy Hsu on 2018/10/17.
//  Copyright © 2018 TinyWorld. All rights reserved.
//

import XCTest

@testable import Demo

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

    func testLoadJSONFile() {
        
        let promise = expectation(description: "Load JSON file.")
        
        helper!.loadJSON(
            name: "Demo",
            from: Bundle(for: JSONHelperTests.self),
            completion: { result in
                
                switch result {
                    
                case let .success(json):
                    
                    let json = json as? [String: Any]
                    
                    let message = json?["message"] as? String
                    
                    XCTAssertEqual(
                        message,
                        "hello world"
                    )
                    
                case let .failure(error): XCTFail("\(error)")
                    
                }
                
                promise.fulfill()
                
            }
        )
        
        wait(
            for: [ promise ],
            timeout: 10.0
        )
        
    }

}
