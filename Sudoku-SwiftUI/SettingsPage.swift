//
//  SettingsPage.swift
//  Sudoku-SwiftUI
//
//  Created by Dhruv Shah on 2020-07-29.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    private let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    private let buildVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""

    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Text("Sudoku")
                    .font(Font.system(.largeTitle, design: .rounded).bold())
                Text("Version 1.01")
                    .font(Font.system(.headline, design: .rounded))
                Text("© 2020 Dhruv Shah")
                    .font(Font.system(.headline, design: .rounded))
                Button(action: {
                    let url = URL(string: "dhruvshah.tech")!
                    UIApplication.shared.open(url)
                }) {
                    Text("Website")
                        .font(Font.system(.headline, design: .rounded))
                }
                Spacer()
            }
            .fullBackgroundStyle()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarTitle("Settings", displayMode: .automatic)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsView()
        }
    }
}
