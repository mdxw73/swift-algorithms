//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Obied, Zack (NA) on 07/11/2019.
//  Copyright © 2019 Obied, Zack (NA). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {
    
    func testBubbleSortWithIntegerArrayReturnsSortedIntegers() {
        //arrange
        let sorting = Sorting()
        let data = [5, 4, 1, 3]
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, [1, 3, 4, 5])
    }
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMergeSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.mergeSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMergeWithTwoSortedIntegerArraysReturnsOneSortedIntegerArrayForMultipleIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input1: [1, 5, 7, 8], input2: [2, 4, 6, 9], expected: [1, 2, 4, 5, 6, 7, 8, 9]),
                         (input1: [3, 12, 16, 17, 20], input2: [1, 12, 13, 15, 18], expected: [1, 3, 12, 12, 13, 15, 16, 17, 18, 20])]
        
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.merge(left: testCase.input1, right: testCase.input2)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortPermormanceForFiveTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 5 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testBubbleSortPermormanceForFiftyTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 50 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testBubbleSortPermormanceForFiveHundredTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 500 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testMergeSortPermormanceForFiveTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 5 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.mergeSort(data: data)
        }
    }
    
    func testMergeSortPerformanceForFiftyTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 50 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.mergeSort(data: data)
        }
    }
    
    func testMergeSortPerformanceForFiveHundredTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 50 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.mergeSort(data: data)
        }
    }
    
    func testQuickSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testInsertionSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]),
                         (input: [456, 300, 3, 1, 5, 4], expected: [1, 3, 4, 5, 300, 456])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.insertionSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testQuickSortPermormanceForFiveTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 5 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.quickSort(data: data)
        }
    }
    
    func testQuickSortPerformanceForFiftyTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 50 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.quickSort(data: data)
        }
    }
    
    func testQuickSortPerformanceForFiveHundredTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 500 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.quickSort(data: data)
        }
    }
    
    func testInsertionSortPermormanceForFiveTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 5 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.insertionSort(data: data)
        }
    }
    
    func testInsertionSortPerformanceForFiftyTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 50 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.insertionSort(data: data)
        }
    }
    
    func testInsertionSortPerformanceForFiveHundredTerms() {
        //arrange
        var data = [Int]()
        for _ in 1 ... 500 {
            data.append(Int.random(in: 1 ... 100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.insertionSort(data: data)
        }
    }
    
}
