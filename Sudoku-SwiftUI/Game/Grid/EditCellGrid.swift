//
//  EditCellGrid.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-08-6.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct EditCellGrid: View {

    let values: Set<Int>

    private var minHeight: CGFloat {
        (screenWidth - (2 * Grid.spacerWidth)) / 9
    }

    private var verticalSpacing: CGFloat {
        isIpad ? 2 : -4
    }

    var body: some View {
        VStack(spacing: verticalSpacing) {
            HStack(spacing: 0) {
                EditCellGridText(digitText: text(for: 0))
                EditCellGridText(digitText: text(for: 1))
                EditCellGridText(digitText: text(for: 2))
            }
            HStack(spacing: 0) {
                EditCellGridText(digitText: text(for: 3))
                EditCellGridText(digitText: text(for: 4))
                EditCellGridText(digitText: text(for: 5))
            }
            HStack(spacing: 0) {
                EditCellGridText(digitText: text(for: 6))
                EditCellGridText(digitText: text(for: 7))
                EditCellGridText(digitText: text(for: 8))
            }
        }
        .frame(maxWidth: .infinity, minHeight: minHeight)
    }

    private func text(for editIndex: Int) -> String {
        if values.contains(where: { $0 == editIndex + 1 }) {
            return "\(editIndex + 1)"
        } else {
            return ""
        }
    }
}

struct EditCellGrid_Previews: PreviewProvider {
    static var previews: some View {
        EditCellGrid(values: Set(arrayLiteral: 1, 2, 3, 4, 7, 8, 9))
    }
}
