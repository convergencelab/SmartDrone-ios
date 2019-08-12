//
//  ToneTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import KeyFinder

public class ToneTests: XCTestCase {
    
    /* CHORD TONE TESTS */
    
    func testChordToneIx1() {
        let cTone: Tone
        cTone = ChordTone(degree: 0)
        XCTAssertEqual(cTone.degree, 0)
    }
    
    func testChordToneIx2() {
        let cTone: Tone
        cTone = ChordTone(degree: 3)
        XCTAssertEqual(cTone.degree, 3)
    }
    
    func testChordToneIx3() {
        let cTone: Tone
        cTone = ChordTone(degree: 8)
        XCTAssertEqual(cTone.degree, 8)
    }
    
    func testEquals() {
        let lhsTone: ChordTone
        let rhsTone: ChordTone
        
        lhsTone = ChordTone(degree: 2)
        rhsTone = ChordTone(degree: 2)
        
        XCTAssertEqual(lhsTone, rhsTone)
    }
    
    /* BASS TONE TESTS */
    
    func testBassToneIx1() {
        let bTone: Tone
        bTone = BassTone(degree: 0)
        XCTAssertEqual(bTone.degree, 0)
    }
    
    func testBassToneIx2() {
        let bTone: Tone
        bTone = BassTone(degree: 3)
        XCTAssertEqual(bTone.degree, 3)
    }
    
    func testBassToneIx3() {
        let bTone: Tone
        bTone = BassTone(degree: 8)
        XCTAssertEqual(bTone.degree, 8)
    }
}
