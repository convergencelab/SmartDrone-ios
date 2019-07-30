//
//  SmartDroneTests.swift
//  SmartDroneTests
//
//  Created by IT Services Loaner on 2019-07-30.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import XCTest
@testable import SmartDrone
@testable import KeyFinder


class SmartDroneTests: XCTestCase {
    
    func keyFinderTest() {
        let curNote = Note(ix: 0)
        XCTAssertTrue(curNote.ix == 0)
    }
    
    func shouldFail() {
        let curNote = Note(ix: 0)
        XCTAssertTrue(curNote.ix == 420)
    }
    
}
