//
//  DiceSettings.swift
//  DiceRoll
//
//  Created by Luka Vuk on 05.09.2023..
//

import Foundation

class DiceSettings: Codable, ObservableObject {
    @Published var diceType: Int
    
    enum CodingKeys: String, CodingKey {
        case diceType
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        diceType = try container.decode(Int.self, forKey: .diceType)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(diceType, forKey: .diceType)
    }
}
