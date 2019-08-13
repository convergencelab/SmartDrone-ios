//
//  DronePresenter.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-13.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

protocol DronePresenter: class, BasePresenter {
    
    func toggleDroneState()
    
    func handleActiveKeyButtonClick()
    
    func sustainKey(keyIx: Int)
    
    func stop()
    
}

final class DronePresenterImpl: DronePresenter {
    
    func toggleDroneState() {
        <#code#>
    }
    
    func handleActiveKeyButtonClick() {
        <#code#>
    }
    
    func sustainKey(keyIx: Int) {
        <#code#>
    }
    
    func stop() {
        <#code#>
    }
    
    func start() {
        <#code#>
    }
    
}
