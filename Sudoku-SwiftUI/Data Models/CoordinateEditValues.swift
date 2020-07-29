//
//  CoordinateEditValues.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//


import Foundation

struct CoordinateEditValues: Equatable {
    let r: Int
    let c: Int
    let s: Int
    var values: Set<Int>
}
