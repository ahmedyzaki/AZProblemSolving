//
//  TwoSum.swift
//  AZProblemSolvingTests
//
//  Created by Ahmed Zaki on 05/12/2021.
//

import XCTest

// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
// You can return the answer in any order.
//
//
//
// Example 1:
//
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Output: Because nums[0] + nums[1] == 9, we return [0, 1].
// Example 2:
//
// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// Example 3:
//
// Input: nums = [3,3], target = 6
// Output: [0,1]
//
//
// Constraints:
//
// 2 <= nums.length <= 104
// -109 <= nums[i] <= 109
// -109 <= target <= 109
// Only one valid answer exists.
//
//
// Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?


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
        isPalindrome(-121)
        let result = twoSum([3,2,4], 6)
        assert(result == [1, 2])
    }
    
    func testPerformanceExample() throws {
    }
}

// (1) -> i = 0 , x = 3 , reminder = 3 , storage = [[3, 1]]
// (2) -> i = 1 , x = 2 , reminder = 4 , storage = [[3, 1], [2, 1]]
// (3) -> i = 2 , x = 4 , reminder = 2 , storage = [[3, 1], [2, 2]] -> [1 , 2]
