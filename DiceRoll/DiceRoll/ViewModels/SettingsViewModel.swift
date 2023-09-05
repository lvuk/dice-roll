//
//  SettingsViewModel.swift
//  DiceRoll
//
//  Created by Luka Vuk on 05.09.2023..
//

import Foundation
import SwiftUI


class SettingsViewModel: ObservableObject {
    @Published var diceType: Int
    @Published var results: [Int]
    
    private let saveResultPath = FileManager.documentsDirectory.appendingPathComponent("SavedResults")
    private let saveTypePath = FileManager.documentsDirectory.appendingPathComponent("SavedDiceType")

    // Initialize and load settings and results
    init() {
        do {
            let data = try Data(contentsOf: saveResultPath)
            results = try JSONDecoder().decode([Int].self, from: data)
        } catch {
            results = []
        }
        
        do {
            let data = try Data(contentsOf: saveTypePath)
            diceType = try JSONDecoder().decode(Int.self, from: data)
        } catch {
            diceType = 4
        }
    
    }

    func save() {
        // Save settings and results
        print(diceType)
        do {
            let data = try JSONEncoder().encode(results)
            try data.write(to: saveResultPath, options: [.atomicWrite, .completeFileProtection])
        } catch {
            print("Couldn't save results")
        }
        
        do {
            let data = try JSONEncoder().encode(diceType)
            try data.write(to: saveTypePath, options: [.atomicWrite, .completeFileProtection])
        } catch {
            print("Couldn't save dice type")
        }
    }

    func reset() {
        diceType = 4
        save()
    }
}

