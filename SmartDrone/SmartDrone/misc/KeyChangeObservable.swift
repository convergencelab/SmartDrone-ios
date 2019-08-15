//
//  KeyChangeObservable.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-15.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol KeyChangeObservable {
        
    func notifyObservers()
    
    func addKeyChangeObserver(observer: KeyChangeObserver)
    
    func removeKeyChangeObserver(observer: KeyChangeObserver)
    
}
