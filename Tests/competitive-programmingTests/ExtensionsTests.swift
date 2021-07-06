//
//  ExtensionsTests.swift
//  
//
//  Created by Lukasz Stachnik on 06/07/2021.
//

import XCTest

@testable import competitive_programming_core

final class ExtensionsTests : XCTestCase {
    
    func test_String_containsFromArray() {
        let testString = "arguments"
        let testArray = ["arg", "beng","kong","mong"]
        
        XCTAssertTrue(testString.containsFromArray(testArray), "Should return true while one of \(testArray) is in \(testString)")
    }
    
    func test_String_containsFromArrayNot() {
        let testString = "makarena"
        let testArray = ["arg", "beng","kong","mong"]
        
        XCTAssertFalse(testString.containsFromArray(testArray), "Should return false while one of \(testArray) is not in \(testString)")
    }
    
}
