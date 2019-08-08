//
//  MajorModeTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import SmartDrone
@testable import KeyFinder

class MajorModeTests: XCTestCase {
    
//    func testShouldFail() {
//        let ans = [69, 420, 0, 0, 0, 0, 0]
//
//        let mode: Mode
//        mode = MajorMode(ix: 0)
//
//        XCTAssertEqual(ans, mode.intervals)
//    }
    
    // Test to make sure the use of protocols is correct
    func testInheritence() {
        let ans = [0, 2, 4, 5, 7, 9, 11]
        
        let mode: Mode
        mode = MajorMode(ix: 0)
        
        XCTAssertEqual(ans, mode.intervals)
    }
    
    // Tests for each mode
    
    func testIonian() {
        let ans = [0, 2, 4, 5, 7, 9, 11]
        
        let mode: Mode
        mode = MajorMode(ix: 0)
        
        XCTAssertEqual("Ionian", mode.name)
        XCTAssertEqual(0, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testDorian() {
        let ans = [0, 2, 3, 5, 7, 9, 10]
        
        let mode: Mode
        mode = MajorMode(ix: 1)
        
        XCTAssertEqual("Dorian", mode.name)
        XCTAssertEqual(1, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testPhrygian() {
        let ans = [0, 1, 3, 5, 7, 8, 10]
        
        let mode: Mode
        mode = MajorMode(ix: 2)
        
        XCTAssertEqual("Phrygian", mode.name)
        XCTAssertEqual(2, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testLydian() {
        let ans = [0, 2, 4, 6, 7, 9, 11]
        
        let mode: Mode
        mode = MajorMode(ix: 3)
        
        XCTAssertEqual("Lydian", mode.name)
        XCTAssertEqual(3, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testMixolydian() {
        let ans = [0, 2, 4, 5, 7, 9, 10]
        
        let mode: Mode
        mode = MajorMode(ix: 4)
        
        XCTAssertEqual("Mixolydian", mode.name)
        XCTAssertEqual(4, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testAeolian() {
        let ans = [0, 2, 3, 5, 7, 8, 10]
        
        let mode: Mode
        mode = MajorMode(ix: 5)
        
        XCTAssertEqual("Aeolian", mode.name)
        XCTAssertEqual(5, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testLocrian() {
        let ans = [0, 1, 3, 5, 6, 8, 10]
        
        let mode: Mode
        mode = MajorMode(ix: 6)
        
        XCTAssertEqual("Locrian", mode.name)
        XCTAssertEqual(6, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
}
