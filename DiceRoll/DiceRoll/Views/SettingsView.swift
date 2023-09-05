//
//  SettingsView.swift
//  DiceRoll
//
//  Created by Luka Vuk on 05.09.2023..
//

import SwiftUI

struct SettingsView: View {

    let diceSides = [4,6,8,10,12,20,100]
    @StateObject private var settingsVM = SettingsViewModel()

    var body: some View {
        NavigationView {
            Form {
                Picker("Select dice type", selection: $settingsVM.diceType) {
                    ForEach(diceSides, id:\.self) { side in
                        Text("\(side)")
                    }
                }
             
                Button("Reset", role: .destructive, action: settingsVM.reset)

                Section {
                    ForEach(settingsVM.results, id:\.self) { result in
                        Text("\(result)")
                    }
                } header: {
                    Text("Results")
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                Button("Save", action: settingsVM.save)
            }
        }
    }
}


