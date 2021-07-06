//
//  ArrayTests.swift
//  
//
//  Created by Lukasz Stachnik on 06/07/2021.
//

import XCTest

@testable import competitive_programming_core

final class ArrayTests: XCTestCase {
    
    func test_inArray() {
        var a1 = ["live", "arp", "strong"]
        var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        var r = ["arp", "live", "strong"]
        shouldReturnExpected(a1, a2, r)
        
        a1 = ["arp", "mice", "bull"]
        a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        r = ["arp"]
        shouldReturnExpected(a1, a2, r)
        
        a1 = ["arp", "arp","mice", "bull"]
        a2 = ["lively","alive", "harp", "sharp", "armstrong"]
        r = ["arp"]
        shouldReturnExpected(a1, a2, r)
    }
    
    func test_inArrayFunctional() {
        var a1 = ["live", "arp", "strong"]
        var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        var r = ["arp", "live", "strong"]
        shouldReturnExpectedFunctional(a1, a2, r)
        
        a1 = ["arp", "mice", "bull"]
        a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        r = ["arp"]
        shouldReturnExpectedFunctional(a1, a2, r)
        
        a1 = ["arp", "arp","mice", "bull"]
        a2 = ["lively","alive", "harp", "sharp", "armstrong"]
        r = ["arp"]
        shouldReturnExpectedFunctional(a1, a2, r)
    }
}

extension ArrayTests {
    
    func shouldReturnExpected(_ a1: [String], _ a2: [String], _ expected: [String]) {
        let get = ArrayConnected.inArray(a1, a2)
        XCTAssertTrue( get == expected, "should return \(expected) and get \(get)")
    }
    
    func shouldReturnExpectedFunctional(_ a1: [String], _ a2: [String], _ expected: [String]) {
        let get = ArrayConnected.inArrayFunctional(a1, a2)
        XCTAssertTrue( get == expected, "should return \(expected) and get \(get)")
    }
}

