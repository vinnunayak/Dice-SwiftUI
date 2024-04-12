//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Vinod Nayak Banavath on 03/04/24.
//

import SwiftUI

struct ContentView: View {

    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .padding()
                })
                .background(.red)
            }
        }
    }
}


struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    ContentView()
}


