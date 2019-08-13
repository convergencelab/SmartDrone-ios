//
//  KeyFinder.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol KeyFinder {

    func start()

    func clear()

    func handleNote(noteIx: Int)

    func getActiveKey() -> Key

    func getKey(keyIx: Int) -> Key

    func setKeyTimerLen(len: Int)

    // Todo: Probably move this to note filter class
    func setNoteLengthFilter(len: Int)

    // Todo: Figure out way of dealing with this
    // Enum class?
    func setParentScale(parentScale: Int)

    // Tdoo: getKey() will replace this
    // ModeTemplate getModeTemplate(int templateIx);
    // func getMode()

    func addKeyChangeListener(listener: KeyChangeListener);

    func removeKeyChangeListener(listener: KeyChangeListener);

}
