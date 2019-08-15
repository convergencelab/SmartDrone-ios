//
//  KeyFinder.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public protocol KeyFinder: class, KeyChangeObservable {
    
    var parentScale: ParentScale? { get set }
    
    var activeKeyTimerLen: Double? { get set }
        
    func start()

    func clear()

    func addNote(note: Note)
    
    func removeNote(note: Note)

}
