//
//  NoteTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-07-30.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import SmartDrone
@testable import KeyFinder


class NoteTests: XCTestCase {
    
    func testC0() {
        let curNote = Note(ix: 0)
        XCTAssertTrue(curNote.ix == 0)
        XCTAssertTrue(curNote.rawIx == 0)
        XCTAssertTrue(curNote.name == "C")
    }
    
    func testC1() {
        let curNote = Note(ix: 12)
        XCTAssertTrue(curNote.ix == 0)
        XCTAssertTrue(curNote.rawIx == 12)
        XCTAssertTrue(curNote.name == "C")
    }
    
    func testD2() {
        let curNote = Note(ix: 26)
        XCTAssertTrue(curNote.ix == 2)
        XCTAssertTrue(curNote.rawIx == 26)
        XCTAssertTrue(curNote.name == "D")
    }
    
    func testSharpNote() {
        let curNote = Note(ix: 18)
        XCTAssertTrue(curNote.ix == 6)
        XCTAssertTrue(curNote.rawIx == 18)
        XCTAssertTrue(curNote.name == "F\u{266f}")
    }
    
}
