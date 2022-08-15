//
//  ContentView.swift
//  EkremAbi
//
//  Created by Ali Demirtaş on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        VStack {
            Image("ekremabi")
                .resizable()
                .frame(width: 200, height: 200)
            Spacer()
            HStack {
                DiceView(number: leftDice)
                DiceView(number: rightDice)
            }
            .padding()
            Spacer()
            Button(action: {
                leftDice = Int.random(in: 1...6)
                rightDice = Int.random(in: 1...6)
            }) {
                Text("Salla")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            }
            .background(Color("black"))
        }
        
        
    }
}
struct DiceView: View {
    
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


