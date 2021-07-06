//
//  ArrayConnected.swift
//  
//
//  Created by Lukasz Stachnik on 06/07/2021.
//

import Foundation

class ArrayConnected {
    
    /**
     Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
     */
    static func inArray(_ a1: [String], _ a2: [String]) -> [String] {
        var r : [String] = []
        for i in a1 {
            if i.containedInArray(a2) {
                if !r.contains(i) {
                    r.append(i)
                }
            }
        }
        return r.sorted()
    }
    
    static func inArrayFunctional(_ a1: [String], _ a2: [String]) -> [String] {
        return Set(a1.filter { s1 in a2.contains { $0.contains(s1) } }).sorted()
    }
    
    
}

extension String {
    
    func containsFromArray(_ array: [String]) -> Bool {
        for string in array {
            if self.contains(string) {
                return true
            }
        }
        return false
    }
    
    func containedInArray(_ array: [String]) -> Bool {
        for string in array {
            if string.contains(self) {
                return true
            }
        }
        return false
    }
}

