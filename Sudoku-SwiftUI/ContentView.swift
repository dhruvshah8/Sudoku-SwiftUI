//
//  ContentView.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-28.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let viewModel = ContentViewModel()
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
