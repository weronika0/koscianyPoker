//
//  MainMenu.swift
//  koscianyPoker
//
//  Created by student on 17/01/2024.
//

import SwiftUI

struct MainMenu: View {
    @ObservedObject var GameView: GameView
    var body: some View {
           Text("Kosciany Poker").foregroundColor(.rozowy)
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .padding(.top, 50)

        Spacer()
        
        Button {
        } label: {
            HStack {
                
                Text("Nowa gra")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .padding()
            }
        }.frame(width: 280, height: 55, alignment: .center)
            .background(Color.rozowy)
            .cornerRadius(30)
            .padding()
        Button {
            GameView.goRules()
        } label: {
                
                Text("Jak grac?")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                

        }.frame(width: 280, height: 55, alignment: .center)
            .background(Color.rozowy)
            .cornerRadius(30)
            .padding(.bottom,50)
        
    }
}

extension Color {
    static let rozowy = Color(red: 255/255, green: 102/255, blue: 178/255) // Ustawienie koloru rozowego
}

#Preview {
    MainMenu(GameView: GameView())
}
