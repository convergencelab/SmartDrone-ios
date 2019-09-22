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
    
    func showNoteHeard(noteIx: Int)
    
    func showKeyActive()
    
    func showSoundActivity()
    
    func showPreferencesActivity()
    
}

class DroneViewController: UIViewController, DroneView {
    
    @IBOutlet weak var pitchLabel: UILabel!
    
    var configurator: DroneConfigurator!
    var presenter: DronePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator = DroneConfiguratorImpl()
        configurator.configure(droneViewController: self)
        presenter.start()
        // Do any additional setup after loading the view.
    }
    
    func showDroneActive() {
        // todo
    }
    
    func showDroneInactive() {
        // todo
    }
    
    func showNoteHeard(noteIx: Int) {
        //        pitchLabel.text = String(noteIx)
        pitchLabel.text = String(noteIx)
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
    
    @IBAction func onDroneClicked(_ sender: UIButton) {
        print("Drone clicked")
        presenter.toggleDroneState()
    }
}
