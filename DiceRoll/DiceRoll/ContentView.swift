//
//  ContentView.swift
//  DiceRoll
//
//  Created by Luka Vuk on 05.09.2023..
//

import SwiftUI

struct ContentView: View {
    
    let resultsExample = [1,2,3]
    @State private var selectedTab = "Dice"
    @ObservedObject private var settings = SettingsViewModel()
    
    var body: some View {
        TabView {
            DiceView(diceType: settings.diceType)
                .tabItem {
                    Label("Dice", systemImage: "dice")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
