//
//  NoteProcessorObserver.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-09-21.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol NoteProcessorObserver {
    
    func handleNoteResult(noteIx: Int)
    
}
