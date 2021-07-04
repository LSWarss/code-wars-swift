//
//  Multiples.swift
//  
//
//  Created by Lukasz Stachnik on 04/07/2021.
//

import Foundation


class Multiples {
    
    /**
     Sum of all the multiples of 3 or 5 below the number passed in.
     */
    static func sumBelow(_ num: Int) -> Int {
        if num <= 0 { return 0 }
        var sum = 0
        for number in 1..<num {
            if number % 3 == 0 && number % 5 == 0 {
                sum += number
            } else if number % 3 == 0 || number % 5 == 0 {
                sum += number
            }
        }
        return sum
    }
    
}
