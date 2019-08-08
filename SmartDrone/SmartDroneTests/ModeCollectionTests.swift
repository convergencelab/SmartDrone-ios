//
//  ModeCollectionTests.swift
//  SmartDroneTests
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import XCTest

@testable import SmartDrone
@testable import KeyFinder

public class ModeCollectionTests: XCTestCase {
    
    func testMajorModes() {
        let modes = ModeCollection()
        var majorModes = modes.majorModes
        
        // Dorian
        XCTAssertEqual( [0, 1, 3, 5, 7, 8, 10], majorModes[2].intervals )
        // Lydian
        XCTAssertEqual( [0, 2, 4, 6, 7, 9, 11], majorModes[3].intervals )
    }
    
    func testMelodicMinorModes() {
        let modes = ModeCollection()
        var melMinModes = modes.melodicMinorModes
        
        // Altered
        XCTAssertEqual( [0, 1, 3, 4, 6, 8, 10], melMinModes[6].intervals )
        // Lydian Augmented
        XCTAssertEqual( [0, 2, 4, 6, 8, 9, 11], melMinModes[2].intervals )
    }
    
}
