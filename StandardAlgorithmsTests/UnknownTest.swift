//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Obied, Zack (NA) on 14/11/2019.
//  Copyright © 2019 Zack Obied. All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testFirstLastSumReturnsCorrectValueForMultipleIntegerArrays() {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [1, 7, 9, 8, 4], expected: 5),
                         (input: [9], expected: 18),
                         (input: [], expected: 0)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.firstLastSum(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testFindModeReturnsModeOfMultipleIntegerArrays() {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [1, 7, 9, 8, 4, 7], expected: 7),
                         (input: [12, 21, 322, 322, 812, 12, 4, 12], expected: 12)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.findMode(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testSecondSmallestReturnsSecondSmallestIntegerOfMultipleIntegerArrays() {
        //arrange
        let unknown = Unknown()
        let testCases = [(input: [1, 7, 9, 8, 4, 7], expected: 4),
                         (input: [12, 21, 322, 322, 812, 12, 4, 12], expected: 12)]
        
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.secondSmallest(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
//    func testExtractReturnsDomainNameOfURL() {
//        //arrange
//        let unknown = Unknown()
//        let testCases = [(input: "www.google.com", expected: "google"),
//                         (input: "mail.support.google.com", expected: "google"),
//                         (input: "www.amazon.com", expected: "amazon")]
//
//        //act
//        //assert
//        for testCase in testCases {
//            let actual = unknown.extract(data: testCase.input)
//            XCTAssertEqual(actual, testCase.expected)
//        }
//    }
    
}
