//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Danchuk-Lauzon, Alexy on 2018-01-16.
//  Copyright © 2018 Danchuk-Lauzon, Alexy. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    // MARC: Properties
    var numberToGuess : Int
    
    // MARC: Initializer
    init() {
        // Generate the random number
        numberToGuess = Int(arc4random_uniform(501)) // Get a number between 0 and 500
   }
    
    // MARC Function
    func checkGuessGiveFeedback(guess: Int) -> String {
        if guess > numberToGuess {
            return "Guess lower"
        } else if guess < numberToGuess {
            return "Guess higher"
        } else {
            return "You got it, Good job!"
        }
    }
    
    
}


