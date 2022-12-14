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
        
        if text.count == 1 {
            return true
        }
        
        return false
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
}
