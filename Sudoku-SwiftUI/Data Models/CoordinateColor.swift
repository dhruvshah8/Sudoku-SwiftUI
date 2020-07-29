//
//  CoordinateColor.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//


import SwiftUI

struct CoordinateColor {
    let coordinate: CoordinateValue
    let color: Color
    
    var s: Int {
        coordinate.s
    }
    
    var r: Int {
        coordinate.r
    }
    
    var c: Int {
        coordinate.c
    }
}
