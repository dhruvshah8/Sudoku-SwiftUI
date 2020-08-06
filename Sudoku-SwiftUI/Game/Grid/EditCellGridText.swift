//
//  EditCellGridText.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-08-6.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct EditCellGridText: View {

    let digitText: String
    
    private var font: Font.TextStyle {
        isIpad ? .headline : .footnote
    }

    var body: some View {
        Text(digitText)
            .foregroundColor(Color("dynamicBlue"))
            .font(.system(font, design: .rounded))
            .frame(maxWidth: .infinity)
    }
}

struct EditCellGridText_Previews: PreviewProvider {
    static var previews: some View {
        EditCellGridText(digitText: "0")
    }
}
