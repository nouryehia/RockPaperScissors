/* GameState.swift
   RockPaperScissors
   Created by Nour Yehia on 8/1/18.
   Copyright © 2018 Nour Yehia. All rights reserved. */

import Foundation

// Describes the state of the game.
enum GameState {
    // Possible states.
    case start, win, lose, draw
    // Returns a string according to the current game state.
    var status: String {
        switch self{
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Win!"
        case .lose:
            return "You Lose!"
        case .draw:
            return "It's a Draw!"
        }
    }
}
