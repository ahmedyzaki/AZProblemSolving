//
//  Palindrome.swift
//  AZProblemSolvingTests
//
//  Created by Ahmed Zaki on 06/12/2021.
//

import XCTest

class Palindrome: XCTestCase {

    func isPalindrome(_ x: Int) -> Bool {
        let num = String(x)
        var result = true
        for index in 0 ..< num.count / 2 {
            let currentIndex = num.index(num.startIndex, offsetBy: index)
            let endIndex = num.index(num.startIndex, offsetBy: num.count - index - 1)
            if num[currentIndex] == num[endIndex] {
                continue
            } else {
                result = false
                break
            }
        }
        return result
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
