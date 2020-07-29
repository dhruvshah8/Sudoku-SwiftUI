//
//  AbsoluteCoordinateValue.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Foundation

struct AbsoluteCoordinateValue: Hashable {
    /// Row index irrespective of what square index it is in (i.e., ranges from 0 to 8)
    let r: Int
    /// Column index irrespective of what square index it is in (i.e., ranges from 0 to 8)
    let c: Int
    let v: Int
}
