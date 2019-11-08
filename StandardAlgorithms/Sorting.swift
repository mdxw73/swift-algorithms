//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Zack Obied on 07/11/2019.
//  Copyright © 2019 Obied, Zack (NA). All rights reserved.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var array = data
        var swaps = true
        var temp = Int()
        while swaps == true {
          swaps = false
          for i in 0 ... array.count - 2 {
            if array[i] > array[i + 1] {
              temp = array[i]
              array[i] = array[i + 1]
              array[i + 1] = temp
              swaps = true
            }
          }
        }
        return array
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        var sortedArray = [Int]()
        var left = left
        var right = right
        while left.count != 0 && right.count != 0 {
            if left[0] > right[0] {
                sortedArray.append(right[0])
                right.removeFirst()
            } else {
                sortedArray.append(left[0])
                left.removeFirst()
            }
        }
        sortedArray.append(contentsOf: right)
        sortedArray.append(contentsOf: left)
        return sortedArray
    }

    func mergeSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let mid = data.count / 2
            var left = [Int]()
            var right = [Int]()
            for i in 0 ..< mid {
                left.append(data[i])
            }
            for i in mid ..< data.count {
                right.append(data[i])
            }
            left = mergeSort(data: left)
            right = mergeSort(data: right)
            return merge(left: left, right: right)
        }
    }
    
    func quickSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let pivot = data[0]
            var left = [Int]()
            var right = [Int]()
            var sortedArray = [Int]()
            for i in 1 ..< data.count {
                if data[i] > pivot {
                    right.append(data[i])
                } else {
                    left.append(data[i])
                }
            }
            sortedArray.append(contentsOf: quickSort(data: left))
            sortedArray.append(pivot)
            sortedArray.append(contentsOf: quickSort(data: right))
            return sortedArray
        }
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        var array = data
        for i in 1 ..< array.count {
          let temp = array[i]
          var j = i - 1
          while j >= 0 && array[j] > temp {
            array[j + 1] = array[j]
            j -= 1
          }
          array[j + 1] = temp
        }
        return array
    }
    
}
