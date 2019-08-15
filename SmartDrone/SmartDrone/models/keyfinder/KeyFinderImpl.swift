//
//  KeyFinderImpl.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public class KeyFinderImpl: KeyFinder {
    
    /* Constants */
    
    private static let majorIncrementSequence = MusicTheory.PHRYGIAN_SCALE_SEQUENCE
    
    private static let melodicMinorIncrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
    
    /* Data & Objects */
    
    private var activeNoteList: ActiveNoteList
    
    private var isContender: [Bool]
    
    private var observers: [KeyChangeObserver]
    
    /* Vars */
    
    private var _activeKeyIx: Int
    
    private var activeKeyIx: Int {
        get {
            return _activeKeyIx
        }
        set {
            _activeKeyIx = activeKeyIx
            notifyObservers()
        }
    }

    private var maxKeyStrength: Int
    
    public var activeKeyTimerLen: Int?
    
    private var _parentScale: ParentScale?
    
    public var parentScale: ParentScale? {
        get {
            return _parentScale
        }
        set {
            _parentScale = parentScale
            
            if parentScale == ParentScale.Major {
                activeNoteList.incrementSequence =
                    KeyFinderImpl.majorIncrementSequence
            }
            else if parentScale == ParentScale.MelodicMinor {
                activeNoteList.incrementSequence = KeyFinderImpl.melodicMinorIncrementSequence
            }
        }
    }
    
    public init() {
        self.activeNoteList = ActiveNoteList()
        self.maxKeyStrength = -1
        self.activeKeyIx = -1
        self.isContender = [Bool](repeating: false, count: MusicTheory.OCTAVE_SIZE)
    }
    
    public func start() {
        // Does nothing in android version
    }
    
    // Todo: Test function
    public func clear() {
        // Remove all notes from active note list
        for (ix, isActive) in activeNoteList.noteIsActive.enumerated() {
            if isActive {
                activeNoteList.removeNote(ix: ix)
            }
        }
        
        // for each note timer
            // stop note timer
        
        // for each key timer
            // stop key timer
    }
    
    public func addNote(note: Note) {
        activeNoteList.addNote(ix: note.ix)
        maxKeyStrength = activeNoteList.keyStrength.max()!
        updateContenderKeys()
    }
    
    public func removeNote(note: Note) {
        activeNoteList.removeNote(ix: note.ix)
        maxKeyStrength = activeNoteList.keyStrength.max()!
        updateContenderKeys()
    }
    
    public func scheduleNoteRemoval(toRemove: Note) {
        // todo
    }
    
    public func cancelNoteRemoval(toCancel: Note) {
        // todo
    }
    
    public func addKeyChangeObserver(observer: KeyChangeObserver) {
        observers.append(observer)
    }
    
    public func removeKeyChangeObserver(observer: KeyChangeObserver) {
        // Todo: Not sure how to implement this yet:
        // Doesn't require it right now since observers are only ever added, never removed
    }
    
    public func notifyObservers() {
        for observer in observers {
            observer.update(newKeyIx: activeKeyIx)
        }
    }
    
    private func updateContenderKeys() {
        for (keyIx, keyStr) in activeNoteList.keyStrength.enumerated() {
            // Don't check active key.
            if keyIx != activeKeyIx {
                if isContender[keyIx] {
                    if !meetsContenderRequirements(curKeyStr: keyStr) {
                        // todo: cancel key change (nil check?)
                        isContender[keyIx] = true
                    }
                }
                else {
                    if meetsContenderRequirements(curKeyStr: keyStr) {
                        // todo: schedule active key change
                        isContender[keyIx] = false
                    }
                }
            }
        }
    }
    
    // Key is active key contender if and only if:
    // 1. Has greater strength than current active key
    // 2. Has equal strength to current max strength (cannot be greater)
    private func meetsContenderRequirements(curKeyStr: Int) -> Bool {
        return curKeyStr > activeNoteList.keyStrength[activeKeyIx]
            && curKeyStr == maxKeyStrength
    }

}
