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
    
    
    // MARC Properties (variables)
    
    
    // MARC Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        
    }
    
    
    // MARC: Custom function(s)
}

