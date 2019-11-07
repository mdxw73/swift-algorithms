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
    
    func testMergeWithIntegerArrayLengthOneAndSortedIntegerArrayLengthManyReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input1: [1, 5], input2: [4], expected: [1, 4, 5]),
                         (input1: [3], input2: [1], expected: [1, 3])]
        
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.merge(left: testCase.input1, right: testCase.input2)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortPermormance () {
        //arrange
        let data = [456, 300, 3, 1, 5, 4]
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testMergeSortPermormance () {
        //arrange
        let data = [456, 300, 3, 1, 5, 4]
        let sorting = Sorting()
        
        //act
        measure {
            sorting.mergeSort(data: data)
        }
    }

}