//
//  Difficulty.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-28.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import Foundation

final class Difficulty: ObservableObject {

    enum Level: String {
        case easy = "Easy"
        case medium = "Medium"
        case hard = "Hard"
    }

    @Published var level: Level

    init(level: Level) {
        self.level = level
    }
}
