//
//  ClearButton.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-08-6.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct ClearButton: View {
    @EnvironmentObject
    private var userAction: UserAction
    @EnvironmentObject
    private var selectedCell: SelectedCell
    @EnvironmentObject
    private var startingGrid: StartingGridValues
    @EnvironmentObject
    private var workingGrid: GridValues
    @EnvironmentObject
    private var editGrid: EditGridValues
    @EnvironmentObject
    private var editState: EditState

    private var horizontalPadding: CGFloat {
        guard !isIpad else {
            return 28
        }
        if screenHeight > 736 { // taller than 8 Plus
            return 22
        } else { // 8 Plus, 8, SE (2nd gen)
            return 14
        }
    }

    private var verticalPadding: CGFloat {
        guard !isIpad else {
            return 20
        }
        return 0
    }

    var body: some View {
        Button(action: {
            self.userAction.action = .clear

            guard let selectedCoordinate = self.selectedCell.coordinate,
                !self.startingGrid.containsAValue(at: selectedCoordinate) else {
                // can't clear values that were part of starting board and unselected
                return
            }

            // clear guesses regardless of editing mode
            self.editGrid.removeValues(at: selectedCoordinate)

            if !self.editState.isEditing {
                self.workingGrid.removeValue(at: selectedCoordinate)
            }
        }) {
            Text("Clear")
                .foregroundColor(.black)
                .font(Font.system(.title, design:.rounded).smallCaps())
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
                .frame(minHeight: 48)
                .background(Color("dynamicGray"))
        }
            .cornerRadius(8)
    }
}

struct ClearButton_Previews: PreviewProvider {
    static var previews: some View {
        ClearButton()
    }
}
