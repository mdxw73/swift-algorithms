//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Zack Obied on 07/11/2019.
//  Copyright © 2019 Zack Obied. All rights reserved.
//

import Foundation

class Searching {
    
    func linearSearch(data: [Int], number: Int) -> Bool {
        var foundIt = false
        for element in data {
            if element == number {
                foundIt = true
            }
        }
            return foundIt
    }
    
    func binarySearch(data: [Int], number: Int) -> Bool {
        var mid = Int()
        var lower = 0
        var upper = data.count - 1
        var foundIt = false
        while lower <= upper && foundIt == false {
            mid = (lower + upper) / 2
            if data[mid] == number {
                foundIt = true
            } else if data[mid] < number {
                lower = mid + 1
            } else {
                upper = mid - 1
            }
        }
        return foundIt
    }
    
}
