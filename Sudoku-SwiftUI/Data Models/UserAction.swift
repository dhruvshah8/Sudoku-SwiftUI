//
//  UserAction.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//


import SwiftUI
import Combine

final class UserAction: ObservableObject {
    enum ActionType: Equatable {
        case none
        case clear
        case digit(_ digit: Int)
    }
    @Published
    var action: ActionType = .none
}
