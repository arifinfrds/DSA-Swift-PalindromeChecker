//
//  PalindromeCheckerTests.swift
//  PalindromeCheckerTests
//
//  Created by arifinfrds.engineer on 14/12/22.
//

// GIVEN empty string
// WHEN the program run
// THEN returns false

// GIVEN string of "a"
// WHEN the program run
// THEN returns true

// GIVEN string of "ab"
// WHEN the program run
// THEN returns false

// GIVEN string of "aba"
// WHEN the program run
// THEN returns true

import XCTest

struct Program {
    func isPalindrome(text: String) -> Bool {
        
        if text.isEmpty {
            return false
        }
        
        var leftPointerIndex = 0
        var rightPointerIndex = text.count - 1
        let chars = text.map { $0 }
        
        while leftPointerIndex < rightPointerIndex {
            
            if chars[leftPointerIndex] == chars[rightPointerIndex] {
                leftPointerIndex += 1
                rightPointerIndex -= 1
            } else {
                return false
            }
        }
        
        return true
    }
}

final class PalindromeCheckerTests: XCTestCase {

    func test_isPalindrome_shouldReturnFalseOnEmptyString() {
        let sut = Program()
        
        let result = sut.isPalindrome(text: "")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isPalindrome_shouldReturnTrueOnSingleString() {
        let sut = Program()
        
        let result = sut.isPalindrome(text: "a")
        
        XCTAssertEqual(result, true)
    }
    
    func test_isPalindrome_shouldReturnFalseOnNonPalindromeString() {
        let sut = Program()
        
        let result = sut.isPalindrome(text: "ab")
        
        XCTAssertEqual(result, false)
    }
    
    func test_isPalindrome_shouldReturnTrueOnPalindromeString() {
        let sut = Program()
        
        let result = sut.isPalindrome(text: "aba")
        
        XCTAssertEqual(result, true)
    }
}
