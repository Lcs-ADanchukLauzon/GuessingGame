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
    var numbersGuessed : [Int]
    
    // MARC: Initializer
    init() {
        // Generate the random number
        numberToGuess = Int(arc4random_uniform(501)) // Get a number between 0 and 500
      
        // Make an empty list of numbers guessed
        numbersGuessed = []
    }
    

    // MARC Function (compaire guess made)
    mutating func checkGuessGiveFeedback(guess: Int) -> String {
        
        // add the guess to guesses made
        numbersGuessed.append(guess)
        
        // compaire the numbers
        if guess > numberToGuess {
            return "Guess lower"
        } else if guess < numberToGuess {
            return "Guess higher"
        } else {
            return "You got it, Good job!"
        }
    }
    
    
}


