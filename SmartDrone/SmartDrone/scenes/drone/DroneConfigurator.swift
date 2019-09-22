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
        let droneRepo = DroneRepositoryImpl()
        let keyFinder = KeyFinderImpl()
        let audioPlayer = AudioPlayerImpl()
        let noteProcessor = NoteProcessorImpl()
        let harmonyGenerator = HarmonyGeneratorImpl()
        
        let presenter = DronePresenterImpl(
            droneRepo: droneRepo,
            view: droneViewController,
            keyFinder: keyFinder,
            audioPlayer: audioPlayer,
            noteProcessor: noteProcessor,
            harmonyGenerator: harmonyGenerator)
        
        droneViewController.presenter = presenter
    }
    
}
