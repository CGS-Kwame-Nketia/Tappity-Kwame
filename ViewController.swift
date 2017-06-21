//
//  ViewController.swift
//  Tappity
//
//  Created by Kwame Nketia on 30/5/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var displayScore: UILabel!
    
    var score  = 0

    var time = 30.0
    
    // is used to check if the game is in progres
    var gameIsRunning  = false

    // when the button is tapped it the count down starts and the score is chnaged every time that it is tapped
    @IBAction func buttonTapped(_ sender: UIButton) {
            // adds one to the score
            score += 1
        
            //when the button is tapped the timer will  start
        
            displayScore.text = "\(score)"
        
        // when time ends
        if timeLabel.text == "Time "{
            
            score = 0
            displayScore.text = "\(score)"
            duration.invalidate()
            timeLabel.text = "Time: 0"
        }
        
    }
    
    let duration = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(gameTime), userInfo: nil, repeats: true)

    
    func gameTime() {
        print("Hello world")
        
        time -= 1.0
        
        timeLabel.text = "Time :\(time)"
        

    }
    
    

}


