//
//  DiceView.swift
//  DiceRoll
//
//  Created by Luka Vuk on 05.09.2023..
//

import SwiftUI

struct DiceView: View {
    
    let diceType: Int
    
    var body: some View {
        NavigationView {
            VStack{
                Text("\(diceType)")
            }
            .navigationTitle("Time to Roll")
            .onAppear {
                print(diceType)
            }
        }
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(diceType: 4)
    }
}
