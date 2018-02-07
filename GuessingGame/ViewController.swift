//
//  ViewController.swift
//  GuessingGame
//
//  Created by Danchuk-Lauzon, Alexy on 2018-01-13.
//  Copyright © 2018 Danchuk-Lauzon, Alexy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARC Outlets
    @IBOutlet weak var numberGuessed: UITextField!
    @IBOutlet weak var messageToUser: UILabel!
    @IBOutlet weak var resetGame: UIButton!
    
    
    // MARC Properties (variables)
    var game = GuessingGame()
    
    
    // MARC Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The number to guess is:")
        print(game.numberToGuess)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARC: Actions
    @IBAction func guessSubmited(_ sender: Any) {
        // Print the number that was guessed
        print(numberGuessed.text)
        
        // use a guard statement to bind to a non-optional variable
        guard let inputGiven = numberGuessed.text else {
          // if the input was nil, stop and return (exit) the function
            return
        }
        
        // use a guard statement to attempt to create an integer
        guard let intagerGiven = Int(inputGiven) else {
           // if the input was text (e.g. "five" we can't make an integer so stop and return (exit) the function)
            return
        }
        //Print the given number
       print(intagerGiven)
        
        // the number to guess is
        print("The number to guess is:")
        print(game.numberToGuess)
        
        messageToUser.text = game.checkGuessGiveFeedback(guess: intagerGiven)
        
        // Is the game over?
        if messageToUser.text == "You got it, Good job!" {
            resetGame.isHidden = false
        }
        
    }
    // Reset button
    @IBAction func resetButton(_ sender: Any) {
        game.numberToGuess = Int(arc4random_uniform(501))
        resetGame.isHidden = true
        game.numbersGuessed  = []
    }
    
    
    
  
    
    
    
    
    
    // MARC: Custom function(s)
}

