//
//  VoicingTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import KeyFinder

public class VoicingTests: XCTestCase {
    
    func testCMajTriad() {
        let voicing = Voicing(voicingTemplate: triad, key: cMaj, minBassIx: 24, minChordIx: 36)
        XCTAssertEqual(voicing.voices, [Note(ix: 24), Note(ix: 36), Note(ix: 43), Note(ix: 52)])
    }
    
    func testCMajBassOnly() {
        let voicing = Voicing(voicingTemplate: bassOnly, key: cMaj, minBassIx: 24, minChordIx: 36)
        XCTAssertEqual(voicing.voices, [Note(ix: 24), Note(ix: 31)])
    }
    
    func testCMajChordOnly() {
        let voicing = Voicing(voicingTemplate: chordOnly, key: cMaj, minBassIx: 24, minChordIx: 36)
        XCTAssertEqual(voicing.voices, [Note(ix: 40), Note(ix: 47)])
    }
    
    func testCLocrianTriad() {
        let voicing = Voicing(voicingTemplate: triad, key: cLocrian, minBassIx: 24, minChordIx: 36)
        XCTAssertEqual(voicing.voices, [Note(ix: 24), Note(ix: 36), Note(ix: 42), Note(ix: 51)])
    }
    
    func testCLydAugTriad() {
        let voicing = Voicing(voicingTemplate: triad, key: cLydAug, minBassIx: 24, minChordIx: 36)
        XCTAssertEqual(voicing.voices, [Note(ix: 24), Note(ix: 36), Note(ix: 44), Note(ix: 52)])
    }
    
    func testCLydAugTriadEdgeCaseChord() {
        let voicing = Voicing(voicingTemplate: triad, key: cLydAug, minBassIx: 24, minChordIx: 37)
        XCTAssertEqual(voicing.voices, [Note(ix: 24), Note(ix: 48), Note(ix: 56), Note(ix: 64)])
    }
    
    func testBLydAug() {
        let voicing = Voicing(voicingTemplate: triad, key: bLydAug, minBassIx: 24, minChordIx: 37)
        XCTAssertEqual(voicing.voices, [Note(ix: 35), Note(ix: 47), Note(ix: 55), Note(ix: 63)])
    }
    
    /* TEST TEMPLATES */
    
    let triad = VoicingTemplate(name: "Anna", bassIxs: [0], chordIxs: [0, 4, 9])
    
    let dropII = VoicingTemplate(name: "Sgt. Pepper", bassIxs: [0, 4], chordIxs: [0, 4, 6, 9])
    
    let bassOnly = VoicingTemplate(name: "Nowhere Man", bassIxs: [0, 4], chordIxs: [])
    
    let chordOnly = VoicingTemplate(name: "Penny", bassIxs: [], chordIxs: [2, 6])
    
    
    /* TEST KEYS */
 
    // C
    
    let cMaj = Key(ix: 0, mode: MajorMode(ix: 0))
    
    let cLocrian = Key(ix: 0, mode: MajorMode(ix: 6))
    
    let cMelMin = Key(ix: 0, mode: MelodicMinorMode(ix: 0))
    
    let cLydAug = Key(ix: 0, mode: MelodicMinorMode(ix: 2))
    
    // Eb
    
    let ebMaj = Key(ix: 3, mode: MajorMode(ix: 0))
    
    let ebLocrian = Key(ix: 3, mode: MajorMode(ix: 6))
    
    let ebMelMin = Key(ix: 3, mode: MelodicMinorMode(ix: 0))
    
    let ebLydAug = Key(ix: 3, mode: MelodicMinorMode(ix: 2))
    
    // B
    
    let bMaj = Key(ix: 11, mode: MajorMode(ix: 0))
    
    let bLocrian = Key(ix: 11, mode: MajorMode(ix: 6))
    
    let bMelMin = Key(ix: 11, mode: MelodicMinorMode(ix: 0))
    
    let bLydAug = Key(ix: 11, mode: MelodicMinorMode(ix: 2))
}
