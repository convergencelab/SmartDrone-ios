//
//  DroneRepository.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-15.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public protocol DroneRepository: class {
    
    var modeCollection: ModeCollection { get }
    
}
