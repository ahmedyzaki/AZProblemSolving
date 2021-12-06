//
//  TwoSum.swift
//  AZProblemSolvingTests
//
//  Created by Ahmed Zaki on 05/12/2021.
//

import XCTest

class TwoSum: XCTestCase {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var storage: [Int:Int] = [Int:Int]()
        for (indexI, value) in nums.enumerated() {
            let remained = target - value
            if let indexJ = storage[remained] {
                return [indexJ, indexI]
            } else {
                storage[value] = indexI
            }
        }
        return []
    }
        
    func testExample() throws {
        let result = twoSum([3,2,4], 6)
        assert(result == [1, 2])
    }
    
    func testPerformanceExample() throws {
    }
}

// (1) -> i = 0 , x = 3 , reminder = 3 , storage = [[3, 1]]
// (2) -> i = 1 , x = 2 , reminder = 4 , storage = [[3, 1], [2, 1]]
// (3) -> i = 2 , x = 4 , reminder = 2 , storage = [[3, 1], [2, 2]] -> [1 , 2]
