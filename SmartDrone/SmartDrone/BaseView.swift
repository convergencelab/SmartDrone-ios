//
//  BaseView.swift
//  SmartDrone
//
//  Created by Travis MacDonald on 2019-08-13.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol BaseView {
    
    associatedtype T
    
    var presenter: T { get set }
    
}
