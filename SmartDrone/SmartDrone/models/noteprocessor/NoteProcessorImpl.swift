//
//  NoteProcessorImpl.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-09-21.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import AudioKit

public class NoteProcessorImpl: NoteProcessor {
    
    private var mic: AKMicrophone!
    private var tracker: AKFrequencyTracker!
    private var silence: AKBooster!
    
    private var observers = [NoteProcessorObserver]()
    
    public init() {
        AKSettings.audioInputEnabled = true
        mic = AKMicrophone()
        tracker = AKFrequencyTracker(mic)
        silence = AKBooster(tracker, gain: 0)
        AudioKit.output = silence
        AKSettings.defaultToSpeaker = true
    }
    
    public func start() {
        do {
            try AudioKit.start()
        } catch {
            AKLog("AudioKit did not start!")
        }
        Timer.scheduledTimer(
            timeInterval: 0.1,
            target: self,
            selector: #selector(NoteProcessorImpl.notifyObservers),
            userInfo: nil,
            repeats: true)
    }
    
    public func stop() {
        // Don't know what to do here
    }
    
    public func addNoteObserver(observer: NoteProcessorObserver) {
        observers.append(observer)
    }
    
    public func removeNoteObserver(observer: NoteProcessorObserver) {
        // Not sure what to do with this guy yet
    }
    
    @objc func notifyObservers() {
        if tracker.amplitude > 0.025 {
            let pitchIx = PitchConverter.hertzToMidiKey(hertzValue: tracker.frequency)
            for observer in observers {
                observer.handleNoteResult(noteIx: pitchIx)
            }
        }
    }
    
}
