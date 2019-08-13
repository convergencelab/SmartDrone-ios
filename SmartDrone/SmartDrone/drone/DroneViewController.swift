//
//  ViewController.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-07-30.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import UIKit
import KeyFinder

protocol DroneView: class {
    
    func showDroneActive()
    
    func showDroneInactive()
    
    func showNoteHeard()
    
    func showKeyActive()
    
    func showSoundActivity()
    
    func showPreferencesActivity()
    
}

final class DroneViewController: UIViewController, DroneView {

    let dronePresenter: DronePresenter
    
    init(dronePresenter: DronePresenter) {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func showDroneActive() {
        <#code#>
    }
    
    func showDroneInactive() {
        <#code#>
    }
    
    func showNoteHeard() {
        <#code#>
    }
    
    func showKeyActive() {
        <#code#>
    }
    
    func showSoundActivity() {
        <#code#>
    }
    
    func showPreferencesActivity() {
        <#code#>
    }

}

