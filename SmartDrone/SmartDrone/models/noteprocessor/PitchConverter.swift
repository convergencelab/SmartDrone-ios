//  ##### PLEASE NOTE ##### //
//  This class is based on Joren Six's class PitchConverter.java from his project TarsosDSP
//  found here: https://github.com/JorenSix/TarsosDSP/blob/master/src/core/be/tarsos/dsp/util/PitchConverter.java
//  ##### PLEASE NOTE ##### //

//  PitchConverter.swift
//  AudioKit-Microphone
//
//  Created by Travis MacDonald on 2019-08-27.
//
//
//  Copyright © 2019 Convergence Lab. All rights reserved.
//
import Foundation

public class PitchConverter {
    
    public init() {}
    
    public static func hertzToMidiKey(hertzValue: Double) -> Int {
        // final int midiKey = (int) Math.round(hertzToMidiCent(hertzValue));
        var pitchInMidiCent = 0.0
        if (hertzValue != 0) {
            pitchInMidiCent = 12 * log(hertzValue / 440) / log(2.0) + 69
        }
        return Int(pitchInMidiCent.rounded())
    }
}
