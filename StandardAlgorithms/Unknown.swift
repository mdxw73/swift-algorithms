//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Obied, Zack (NA) on 14/11/2019.
//  Copyright © 2019 Zack Obied. All rights reserved.
//

import Foundation

class Unknown {
    
    func firstLastSum(data: [Int]) -> Int {
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0] * 2
        } else {
            return data[0] + data[data.count - 1]
        }
    }
    
    func findMode(data: [Int]) -> Int {
        var count = 1
        var countArray = [Int]()
        for i in 0 ..< data.count {
            for j in 0 ..< data.count {
                if  i == j {
                    continue
                } else {
                    if data[i] == data[j] {
                        count += 1
                    }
                }
            }
            countArray.append(count)
            count = 1
        }
        var holder = 0
        for i in 0 ..< countArray.count {
            if countArray[i] > data[holder] {
                holder = i
            }
        }
        return data[holder]
    }
    
    func secondSmallest(data: [Int]) -> Int {
        var holder = 0
        for i in 0 ..< data.count {
            if data[i] < data[holder] {
                holder = i
            }
        }
        var holder2 = Int()
        if 0 == holder {
            holder2 = 1
        } else {
            holder2 = 0
        }
        for i in 0 ..< data.count {
            if data[i] < data[holder2] && holder != i{
                holder2 = i
            }
        }
        return data[holder2]
    }
    
    func extract(data: String) -> String {
        let end = data.lastIndex(of: ".")!
        var domain = String(data[..<end])
        let start = domain.lastIndex(of: ".")!
        domain = String(domain[start...])
        domain = String(domain.dropFirst(1))
        return domain
    }
    
}
