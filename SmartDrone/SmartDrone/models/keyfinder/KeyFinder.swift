//
//  KeyFinder.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public protocol KeyFinder: class {

    var activeKeyIx: Int { get }
    
    var parentScale: ParentScale? { get set }
    
    var activeKeyTimerLen: Int? { get set }
        
    func start()

    func clear()

    func addNote(note: Note)
    
    func scheduleNoteRemoval(toRemove: Note)
    
    func cancelNoteRemoval(toCancel: Note)

    func addKeyChangeObserver(observer: KeyChangeObserver)

    func removeKeyChangeObserver(observer: KeyChangeObserver)

}
