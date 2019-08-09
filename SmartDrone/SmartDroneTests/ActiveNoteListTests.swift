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
    
    /* TESTS FOR KEY STRENGTH */
    
    func testAddC() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        XCTAssertEqual([1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0], anList.keyStrength)
    }
    
    func testAddCAlreadyAdded() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        anList.addNote(ix: 0)
        // Should be same answer as only added once
        XCTAssertEqual([1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0], anList.keyStrength)
    }
    
    func testAddRemoveC() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        anList.removeNote(ix: 0)
        XCTAssertEqual([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], anList.keyStrength)
    }
    
    func testRemoveCFromEmptyList() {
        let anList = ActiveNoteList()
        anList.removeNote(ix: 0)
        XCTAssertEqual([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], anList.keyStrength)
    }
    
    func testAddB() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 11)
        XCTAssertEqual([1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1], anList.keyStrength)
    }
    
    func testAddCAndB() {
        let anList = ActiveNoteList()
        anList.addNote(ix: 0)
        anList.addNote(ix: 11)
        XCTAssertEqual([2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1], anList.keyStrength)
    }
}
