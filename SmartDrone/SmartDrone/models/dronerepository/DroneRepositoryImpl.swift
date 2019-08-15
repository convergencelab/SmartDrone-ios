//
//  DroneRepositoryImpl.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-15.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public class DroneRepositoryImpl: DroneRepository {
    
    private var _modeCollection: ModeCollection?
    
    public var modeCollection: ModeCollection {
        get {
            if self._modeCollection == nil {
                self._modeCollection = ModeCollection()
            }
            return _modeCollection!
        }
    }
    
    public init() {
        _modeCollection = nil
    }
    
}
