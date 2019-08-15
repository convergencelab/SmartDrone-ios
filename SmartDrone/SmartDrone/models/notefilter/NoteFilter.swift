//
//  NoteFilter.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-14.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol NoteFilter: class {
    
    var noteFilterLen: Int? { get set }
    
    func noteCanBeAdded(noteIx: Int)
    
}
