//
//  KeyTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import KeyFinder

public class KeyTests: XCTestCase {
    
    func testCIonian() {
        let cIonian = Key(ix: 0, mode: MajorMode(ix: 0))
        XCTAssertEqual(cIonian.ix, 0)
        XCTAssertEqual(cIonian.mode.name, "Ionian")
        XCTAssertEqual(cIonian.mode.intervals, [0, 2, 4, 5, 7, 9, 11])
    }
    
    func testEbDorian() {
        let ebDorian = Key(ix: 3, mode: MajorMode(ix: 1))
        XCTAssertEqual(ebDorian.ix, 3)
        XCTAssertEqual(ebDorian.mode.name, "Dorian")
        XCTAssertEqual(ebDorian.mode.intervals, [0, 2, 3, 5, 7, 9, 10])
    }
    
    func testCMelodicMinor() {
        let cMelMin = Key(ix: 0, mode: MelodicMinorMode(ix: 0))
        XCTAssertEqual(cMelMin.ix, 0)
        XCTAssertEqual(cMelMin.mode.name, "Melodic Minor")
        XCTAssertEqual(cMelMin.mode.intervals, [0, 2, 3, 5, 7, 9, 11])
    }
    
    func testELyAug() {
        let eLydAug = Key(ix: 4, mode: MelodicMinorMode(ix: 2))
        XCTAssertEqual(eLydAug.ix, 4)
        XCTAssertEqual(eLydAug.mode.name, "Lydian Augmented")
        XCTAssertEqual(eLydAug.mode.intervals, [0, 2, 4, 6, 8, 9, 11])
    }
    
}
