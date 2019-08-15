//
//  ViewController.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-07-30.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import UIKit
import CoreData

protocol DroneView: class {
    
    func showDroneActive()
    
    func showDroneInactive()
    
    func showNoteHeard()
    
    func showKeyActive()
    
    func showSoundActivity()
    
    func showPreferencesActivity()
    
}

class DroneViewController: UIViewController, DroneView {
    
    var configurator = DroneConfiguratorImpl()
    var presenter: DronePresenter!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    func showDroneActive() {
        // todo
    }
    
    func showDroneInactive() {
        // todo
    }
    
    func showNoteHeard() {
        // todo
    }
    
    func showKeyActive() {
        // todo
    }
    
    func showSoundActivity() {
        // todo
    }
    
    func showPreferencesActivity() {
        // todo
    }

}

