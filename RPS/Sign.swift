/* Sign.swift
   RockPaperScissors
   Created by Nour Yehia on 8/1/18.
   Copyright © 2018 Nour Yehia. All rights reserved. */

import Foundation
import GameplayKit

// Generate a random number between 0 and 2.
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

// Returns a sign based on the random number generated.
func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
    }
    else {
        return .scissors
    }
}

// Sign object.
enum Sign {
    // Different signs.
    case rock, paper, scissors
    
    // Returns emoji describing sign.
    var emoji: String {
        switch self {
            case .rock: return "👊"
            case .paper: return "✋"
            case .scissors: return "✌️"
        }
    }
    
    // Generates a game state (win, lose, or draw) based on two signs.
    func gameState(opponent: Sign) -> GameState {
        if (self == .rock && opponent == .scissors) || (self == .paper && opponent == .rock) || (self == .scissors && opponent == .paper) {
            return .win
        } else if self == opponent {
            return .draw
        } else {
            return .lose
        }
    }
}
