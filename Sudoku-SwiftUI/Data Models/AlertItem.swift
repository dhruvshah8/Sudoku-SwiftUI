//
//  AlertItem.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//


import Foundation

struct AlertItem: Identifiable {
    enum AlertItemType {
        case newGame, finishedGame
    }
    
    let id: AlertItemType
}
