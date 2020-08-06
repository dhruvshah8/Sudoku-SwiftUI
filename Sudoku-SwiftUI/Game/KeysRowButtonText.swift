//
//  KeysRowButtonText.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-08-6.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct KeysRowButtonText: View {

    let text: String

    private var textHeight: CGFloat {
        if isLargestIpad {
            return 80
        } else if isIpad {
            return 60
        } else {
            return 48
        }
    }
    private var textFont: Font {
        let textStyle: Font.TextStyle = isIpad ? .largeTitle : .title
        return Font.system(textStyle, design: .rounded)
    }

    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .font(textFont)
            .frame(maxWidth: .infinity, minHeight: textHeight)
            .background(Color("dynamicGray"))
    }
}
