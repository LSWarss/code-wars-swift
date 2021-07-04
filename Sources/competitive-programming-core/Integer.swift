//
//  Integer.swift
//  
//
//  Created by Lukasz Stachnik on 04/07/2021.
//

import Foundation

extension Int {
    
    /**
     The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
     */
    static func findOutlier(_ array: [Int]) -> Int {
        let even = array.filter { $0.isMultiple(of: 2)}
        
        return even.count != 1 ? array.filter { $0 % 2 != 0}.first! : even.first!
    }
    
}
