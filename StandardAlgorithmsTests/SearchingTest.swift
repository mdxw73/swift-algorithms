//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Zack Obied on 07/11/2019.
//  Copyright © 2019 Zack Obied. All rights reserved.
//

import XCTest

class SearchingTest: XCTestCase {

    func testLinearSearchWithMultipleIntegerArraysReturnsPresenceOfElement() {
        //arrange
        let searching = Searching()
        let testCases = [(input: [1, 7, 9, 8, 4], input2: 7, expected: true),
                         (input: [12, 31, 14, 22, 9], input2: 4, expected: false)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = searching.linearSearch(data: testCase.input, number: testCase.input2)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBinarySearchWithMultipleSortedIntegerArraysReturnsPresenceOfElement() {
        //arange
        let searching = Searching()
        let testCases = [(input: [1, 3, 5, 8, 11], input2: 7, expected: false),
                         (input: [18, 21, 32, 38, 40, 56], input2: 32, expected: true)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = searching.binarySearch(data: testCase.input, number: testCase.input2)
            XCTAssertEqual(actual, testCase.expected)
        }
    }

}
