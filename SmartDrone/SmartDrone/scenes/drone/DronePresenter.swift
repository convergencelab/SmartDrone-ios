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

final class DronePresenterImpl: DronePresenter, NoteProcessorObserver {

    var droneRepo: DroneRepository!
    var view: DroneViewController!
    var keyFinder: KeyFinder!
    var audioPlayer: AudioPlayer!
    var noteProcessor: NoteProcessor!
    var harmonyGenerator: HarmonyGenerator!
    
    private var state = State.OFF
    
    enum State {
        case ON
        case OFF
    }
    
    public init(droneRepo: DroneRepository,
                view: DroneViewController,
                keyFinder: KeyFinder,
                audioPlayer: AudioPlayer,
                noteProcessor: NoteProcessor,
                harmonyGenerator: HarmonyGenerator) {
        
        self.droneRepo = droneRepo
        self.view = view
        self.keyFinder = keyFinder
        self.audioPlayer = audioPlayer
        self.noteProcessor = noteProcessor
        self.harmonyGenerator = harmonyGenerator
        
        noteProcessor.addNoteObserver(observer: self)
    }
    
    func toggleDroneState() {
        if state == State.OFF {
            noteProcessor.start()
            state = State.ON
        }
        else {
            noteProcessor.stop()
            state = State.OFF
        }
    }

    func handleActiveKeyButtonClick() {

    }

    func sustainKey(keyIx: Int) {

    }

    func stop() {

    }

    func start() {

    }
    
    func handleNoteResult(noteIx: Int) {
        view.showNoteHeard(noteIx: noteIx)
    }

}
