//
//  FileManager.swift
//  RememberTheName
//
//  Created by Luka Vuk on 29.08.2023..
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

