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
    
    private var scheduledTimer: Timer?
    
    public init() {
        AKSettings.audioInputEnabled = true
        mic = AKMicrophone()
        tracker = AKFrequencyTracker(mic)
        silence = AKBooster(tracker, gain: 0)
        AudioKit.output = silence
        AKSettings.defaultToSpeaker = true
    }
    
    public func start() {
        // Todo: Check out this line of code later
        do {
            try AudioKit.start()
        } catch {
            AKLog("AudioKit did not start!")
        }
        scheduledTimer = Timer.scheduledTimer(
            timeInterval: 0.1,
            target: self,
            selector: #selector(NoteProcessorImpl.notifyObservers),
            userInfo: nil,
            repeats: true)
    }
    
    public func stop() {
        if (scheduledTimer != nil) {
            scheduledTimer!.invalidate()
            scheduledTimer = nil
        }
    }
    
    public func addNoteObserver(observer: NoteProcessorObserver) {
        observers.append(observer)
    }
    
    public func removeNoteObserver(observer: NoteProcessorObserver) {
        // Not sure what to do with this guy yet
    }
    
    @objc func notifyObservers() {
        let pitchIx: Int
        if tracker.amplitude > 0.025 {
            pitchIx = PitchConverter.hertzToMidiKey(hertzValue: tracker.frequency)
        }
        else {
            pitchIx = -1
        }
        for observer in observers {
            observer.handleNoteResult(noteIx: pitchIx)
        }
    }
    
}
