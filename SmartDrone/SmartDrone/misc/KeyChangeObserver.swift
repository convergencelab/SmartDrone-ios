//
//  KeyChangeObserver.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public protocol KeyChangeObserver {
    
    func update(newKeyIx: Int)
    
}
