//
//  KeyFinder.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation
import KeyFinder

public protocol KeyFinder {

//    func getActiveKey() -> Key
    var activeKey: Key { get }
    
    var parentScale: ParentScale { get set }
//    func setParentScale(parentScale: ParentScale)
    
    var activeKeyTimerLen: Int { get set }
        
    func start()

    func clear()

    func addNote(note: Note?)

    func getMajorKey(keyIx: Int) -> Key

    func getMelodicMinorKey(keyIx: Int) -> Key
    
    func setKeyTimerLen(len: Int)

    // Todo: Probably move this to note filter class
//    func setNoteLengthFilter(len: Int)

    func addKeyChangeObserver(observer: KeyChangeObserver);

    func removeKeyChangeObserver(observer: KeyChangeObserver);

}
