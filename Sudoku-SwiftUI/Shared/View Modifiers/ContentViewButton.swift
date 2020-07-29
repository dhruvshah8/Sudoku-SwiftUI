//
//  ContentViewButton.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct MenuButtonStyle: ViewModifier {

    var buttonVerticalPadding: CGFloat {
        if isLargestIpad {
            return 24
        } else if isIpad {
            return 20
        } else {
            return 10
        }
    }

    var buttonHorizontalPadding: CGFloat {
        if isLargestIpad {
            return 38
        } else if isIpad {
            return 32
        } else {
            return 16
        }
    }
    
    func body(content: Content) -> some View {
        content
            .padding(.vertical, buttonVerticalPadding)
            .padding(.horizontal, buttonHorizontalPadding)
            .background(Color.blue.opacity(0.2))
            .cornerRadius(8)
    }
}

extension View {
    func menuButtonStyle() -> some View {
        self.modifier(MenuButtonStyle())
    }
}

struct MenuButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

