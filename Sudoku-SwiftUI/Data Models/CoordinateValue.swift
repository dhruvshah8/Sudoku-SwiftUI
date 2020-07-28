//
//  CoordinateValue.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-28.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Foundation

struct CoordinateValue: Hashable {
    let r: Int
    let c: Int
    let s: Int
    let v: Int
    
    var coordinate: Coordinate {
        return (r: r, c: c, s: s)
    }
}

typealias Coordinate = (r: Int, c: Int, s: Int)

