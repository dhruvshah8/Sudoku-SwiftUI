//
//  ViewModel.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-28.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import UIKit

protocol ViewModel {
    var isIpad: Bool { get }
    var isLargestIpad: Bool { get }
    var screenHeight: CGFloat { get }
    var screenWidth: CGFloat { get }
}

extension ViewModel {
    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    /// E.g., 12.9-inch iPads
    var isLargestIpad: Bool {
        isIpad && screenWidth > 1023
    }

    var screenHeight: CGFloat {
        UIScreen.main.bounds.height
    }

    var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
}

