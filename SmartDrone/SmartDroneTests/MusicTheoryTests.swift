//
//  MusicTheoryTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import KeyFinder

public class MusicTheoryTests: XCTestCase {
    
    func testLowestIxFuncC() {
        XCTAssertEqual(MusicTheory.getLowestIx(root: 0, min: 0), 0)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 12, min: 0), 0)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 24, min: 0), 0)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 0, min: 12), 12)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 0, min: 13), 24)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 12, min:13), 24)
    }
    
    func testLowestIxFuncEb() {
        XCTAssertEqual(MusicTheory.getLowestIx(root: 3, min: 0), 3)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 15, min: 0), 3)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 3, min: 12), 15)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 3, min: 4), 15)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 3, min: 3), 3)
        XCTAssertEqual(MusicTheory.getLowestIx(root: 15, min: 3), 3)

    }
    
}
