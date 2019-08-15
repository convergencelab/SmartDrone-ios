//
//  DroneConfigurator.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-15.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

protocol DroneConfigurator {
    
    func configure(droneViewController: DroneViewController)
    
}

class DroneConfiguratorImpl: DroneConfigurator {
    
    func configure(droneViewController: DroneViewController) {
        // todo: sprinkle in some magic
    }
    
}
