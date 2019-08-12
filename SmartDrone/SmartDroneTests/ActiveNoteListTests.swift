//
//  ActiveNoteListTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import KeyFinder

public class ActiveNoteListTests: XCTestCase {
    
    func testInit() {
        let anList = ActiveNoteList()
        var maxStr = -1
        // Linear search for max strength
        for keyStr in anList.keyStrength {
            if keyStr > maxStr {
                maxStr = keyStr
            }
        }
        XCTAssertEqual(0, maxStr)
    }
    
    func testInitAllFalse() {
        let anList = ActiveNoteList()
        var flag = false
        // Linear search for any occurence of true
        for isActive in anList.noteIsActive {
            if isActive {
                flag = true
            }
        }
        XCTAssertEqual(false, flag)
    }
    
    /* TESTS FOR MAJOR SCALE */
    
    func testAddC() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        XCTAssertEqual([1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0], anList.keyStrength)
        XCTAssertEqual([true, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testAddCAlreadyAdded() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        anList.addNote(ix: 0)
        // Should be same answer as only added once
        XCTAssertEqual([1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0], anList.keyStrength)
        XCTAssertEqual([true, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testAddRemoveC() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        anList.removeNote(ix: 0)
        XCTAssertEqual([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], anList.keyStrength)
        XCTAssertEqual([false, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testRemoveCFromEmptyList() {
        let anList = ActiveNoteList()
        anList.removeNote(ix: 0)
        XCTAssertEqual([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], anList.keyStrength)
        XCTAssertEqual([false, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testAddB() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 11)
        XCTAssertEqual([1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1], anList.keyStrength)
        XCTAssertEqual([false, false, false, false, false, false, false, false, false, false, false, true], anList.noteIsActive)
    }
    
    func testAddCAndB() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        anList.addNote(ix: 11)
        XCTAssertEqual([2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1], anList.keyStrength)
        XCTAssertEqual([true, false, false, false, false, false, false, false, false, false, false, true], anList.noteIsActive)
    }
    
    /* TESTS FOR MELODIC MINOR SCALE */
    
    func testAddCMel() {
        let anList = ActiveNoteList()
        anList.incrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
        anList.addNote(ix: 0)
        XCTAssertEqual([1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0], anList.keyStrength)
        XCTAssertEqual([true, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testAddCAlreadyAddedMel() {
        let anList = ActiveNoteList()
        anList.incrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
        anList.addNote(ix: 0)
        anList.addNote(ix: 0)
        // Should be same answer as only added once
        XCTAssertEqual([1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0], anList.keyStrength)
        XCTAssertEqual([true, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testAddRemoveCMel() {
        let anList = ActiveNoteList()
        anList.incrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
        anList.addNote(ix: 0)
        anList.removeNote(ix: 0)
        XCTAssertEqual([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], anList.keyStrength)
        XCTAssertEqual([false, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testRemoveCFromEmptyListMel() {
        let anList = ActiveNoteList()
        anList.incrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
        anList.removeNote(ix: 0)
        XCTAssertEqual([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], anList.keyStrength)
        XCTAssertEqual([false, false, false, false, false, false, false, false, false, false, false, false], anList.noteIsActive)
    }
    
    func testAddBMel() {
        let anList = ActiveNoteList()
        anList.incrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
        anList.addNote(ix: 11)
        XCTAssertEqual([1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1], anList.keyStrength)
        XCTAssertEqual([false, false, false, false, false, false, false, false, false, false, false, true], anList.noteIsActive)
    }
    
    func testAddCAndBMel() {
        let anList = ActiveNoteList()
        anList.incrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
        anList.addNote(ix: 0)
        anList.addNote(ix: 11)
        XCTAssertEqual([2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1], anList.keyStrength)
        XCTAssertEqual([true, false, false, false, false, false, false, false, false, false, false, true], anList.noteIsActive)
    }
}
