//
//  DiceSettings.swift
//  DiceRoll
//
//  Created by Luka Vuk on 05.09.2023..
//

import Foundation

class DiceSettings: Codable, ObservableObject  {
    @Published var diceTypeSelected: Int = 4
}
