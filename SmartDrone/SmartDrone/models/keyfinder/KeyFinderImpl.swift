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
    
    private static let majorIncrementSequence = MusicTheory.PHRYGIAN_SCALE_SEQUENCE
    
    private static let melodicMinorIncrementSequence = MusicTheory.DORIAN_FLAT2_SEQUENCE
    
    private let modeCollection: ModeCollection
    
    private var maxKeyStrength: Int?
    
    private var activeNoteList: ActiveNoteList
    
    private var activeModes: [Mode]
    
    public private(set) var activeKey: Key
    
    private var _parentScale: ParentScale
    
    public var parentScale: ParentScale {
        get {
            return _parentScale
        }
        set {
            _parentScale = parentScale
            
            if parentScale == ParentScale.Major {
                activeModes = modeCollection.majorModes
                activeNoteList.incrementSequence =
                    KeyFinderImpl.majorIncrementSequence
            }
            else if parentScale == ParentScale.MelodicMinor {
                activeModes = modeCollection.melodicMinorModes
                activeNoteList.incrementSequence = KeyFinderImpl.melodicMinorIncrementSequence
            }
        }
    }
    
    public init() {
        self.activeNoteList = ActiveNoteList()
        self.parentScale = ParentScale.Major // Major by default
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
    
    // Function should accept nil note
    public func addNote(note: Note?) {
        // android version does notefiltering and shit
        // but this one will just add the notes + some KeyFinder.java logic
        
        if note != nil {
            activeNoteList.addNote(ix: note!.ix)
            maxKeyStrength = activeNoteList.keyStrength.max()
            
            // updateContenderKeys()
            
            // if timer active for prev added note
                // start timer for prev added note
        }
    }
    
    /* THESE FUNCTIONS CALLED BY PRESENTER */
    
    // scheduleNoteRemoval(toSchedule: Note)
    
    // cancelNoteRemoval(toCancel: Note)
    
    public func getMajorKey(keyIx: Int) -> Key {
        // will generate major mode and make key with it
    }
    
    public func getMelodicMinorKey(keyIx: Int) -> Key {
        // will generate melodic minor mode and make key with it
    }
    
    public func setKeyTimerLen(len: Int) {
        // keyTimerLen = len
    }
    
    // move this to note filter model
    public func setNoteLengthFilter(len: Int) {
        // noteLen = len
    }
    
    public func addKeyChangeObserver(observer: KeyChangeObserver) {
        <#code#>
    }
    
    public func removeKeyChangeObserver(observer: KeyChangeObserver) {
        <#code#>
    }

}
