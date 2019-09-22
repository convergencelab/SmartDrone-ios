//
//  NoteProcessor.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-09-21.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//
import Foundation

public protocol NoteProcessor: class {
    
    func start()
    
    func stop()
    
    func addNoteObserver(observer: NoteProcessorObserver)
    
    func removeNoteObserver(observer: NoteProcessorObserver)
    
}
