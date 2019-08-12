//
//  VoicingTemplateTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import KeyFinder

public class VoicingTemplateTests: XCTestCase {
    
    func testBassAndChordGiven() {
        let template = VoicingTemplate(name: "Julia", bassIxs: [0, 2, 4], chordIxs: [0, 2, 4])
        XCTAssertEqual("Julia", template.name)
        XCTAssertEqual([BassTone(degree: 0), BassTone(degree: 2), BassTone(degree: 4)], template.bassTones)
        XCTAssertEqual([ChordTone(degree: 0), ChordTone(degree: 2), ChordTone(degree: 4)], template.chordTones)
        XCTAssertEqual(template.size, 6)
    }
    
    func testChordGiven() {
        let template = VoicingTemplate(name: "Bungalow Bill", bassIxs: [], chordIxs: [0, 4])
        XCTAssertTrue(template.bassTones.isEmpty)
        XCTAssertTrue(!template.chordTones.isEmpty)
        XCTAssertEqual(template.size, 2)
    }
    
    func testBassGiver() {
        let template = VoicingTemplate(name: "Rita", bassIxs: [0], chordIxs: [])
        XCTAssertTrue(!template.bassTones.isEmpty)
        XCTAssertTrue(template.chordTones.isEmpty)
        XCTAssertEqual(template.size, 1)
    }
    
}
