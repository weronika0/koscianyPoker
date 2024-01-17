//
//  GameView.swift
//  koscianyPoker
//
//  Created by student on 17/01/2024.
//

import Foundation
import SwiftUI

class GameView: ObservableObject{
    var maxProgress = 3
    
    @Published var playerProgress: Int
    @Published var opponentProgress: Int
    @Published var model = GameView.createGameModel()
    @Published var gameStatus: GameScreen

    static func createGameModel() -> GameModel {
        return GameModel()
    }
    
    init(){
        self.playerProgress = 0
        self.opponentProgress = 0
        self.gameStatus = GameScreen.start;
    }
    
    func startGame(){
        self.gameStatus = GameScreen.playing
    }
    
    func goRules(){
        self.gameStatus = GameScreen.rules
    }
    
    enum GameScreen {
        case start
        case playing
        case end
        case rules
    }
}
