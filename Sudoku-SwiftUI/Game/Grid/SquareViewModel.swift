//
//  SquareViewModel.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-08-6.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct SquareViewModel: ViewModel {

    let rowIndices = [0, 1, 2]
    var borderWidth: CGFloat {
        screenHeight > 667 ? 3 : 2
    }
}
