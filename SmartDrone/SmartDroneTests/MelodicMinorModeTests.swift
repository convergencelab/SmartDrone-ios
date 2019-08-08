//
//  MelodicMinorModeTests.swift
//  SmartDroneTests
//
//  Created by IT Services Loaner on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import SmartDrone
@testable import KeyFinder

class MelodicMinorModeTests: XCTestCase {
    
    // Tests for each mode
    
    func testMelodicMinor() {
        let ans = [0, 2, 3, 5, 7, 9, 11]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 0)
        
        XCTAssertEqual("Melodic Minor", mode.name)
        XCTAssertEqual(0, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testPhrygianSharpSix() {
        let ans = [0, 1, 3, 5, 7, 9, 10]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 1)
        
        XCTAssertEqual("Phrygian Sharp 6", mode.name)
        XCTAssertEqual(1, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testLydianAugmented() {
        let ans = [0, 2, 4, 6, 8, 9, 11]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 2)
        
        XCTAssertEqual("Lydian Augmented", mode.name)
        XCTAssertEqual(2, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testLydianFlatSeven() {
        let ans = [0, 2, 4, 6, 7, 9, 10]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 3)
        
        XCTAssertEqual("Lydian Flat 7", mode.name)
        XCTAssertEqual(3, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testMixolydianFlatSix() {
        let ans = [0, 2, 4, 5, 7, 8, 10]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 4)
        
        XCTAssertEqual("Mixolydian Flat 6", mode.name)
        XCTAssertEqual(4, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testLocrianSharpTwo() {
        let ans = [0, 2, 3, 5, 6, 8, 10]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 5)
        
        XCTAssertEqual("Locrian Sharp 2", mode.name)
        XCTAssertEqual(5, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
    
    func testAltered() {
        let ans = [0, 1, 3, 4, 6, 8, 10]
        
        let mode: Mode
        mode = MelodicMinorMode(ix: 6)
        
        XCTAssertEqual("Altered", mode.name)
        XCTAssertEqual(6, mode.ix)
        XCTAssertEqual(ans, mode.intervals)
    }
}
