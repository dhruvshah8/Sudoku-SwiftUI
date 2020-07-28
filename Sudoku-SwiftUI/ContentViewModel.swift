//
//  ContentViewModel.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-28.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct ContentViewModel: ViewModel {
    var difficultyButtonHSpacing: CGFloat {
        16 * (isIpad ? 2.5 : 1)
    }
    
    var buttonsVSpacing: CGFloat {
        40 * (isIpad ? 2 : 1)
    }
    
    let difficultyLevels: [Difficulty.Level] = [.easy, .medium, .hard]
}

