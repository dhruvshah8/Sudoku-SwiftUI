//
//  EditState.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//


import Foundation

final class EditState: ObservableObject {
    @Published
    var isEditing: Bool = false
}
