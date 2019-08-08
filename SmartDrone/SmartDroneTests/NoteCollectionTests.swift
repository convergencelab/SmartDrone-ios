//
//  NoteCollectionTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import SmartDrone
@testable import KeyFinder

class NoteCollectionTests: XCTestCase {

    func testToRuleThemAll() {
        let notes = NoteCollection()
        for i in 0..<MusicTheory.TOTAL_NOTES {
            let curNote = Note(ix: i)
            XCTAssertEqual(curNote.ix, notes.getNoteAt(ix: i).ix)
            XCTAssertEqual(curNote.name, notes.getNoteAt(ix: i).name)
            XCTAssertEqual(curNote.rawIx, notes.getNoteAt(ix: i).rawIx)
        }
    }
    
}
