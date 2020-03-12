//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Joseph Payongayong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var targetLabel: UILabel!
    func updateTargetLabel (){
        self.targetLabel.text = "\(targetValue)"
    }

    
    @IBOutlet weak var slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
     var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
       
        //call startNewRound
        startNewRound()
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    //part 3&4 of part 3: create new round
    func startNewRound() {
        targetValue = Int.random(in: 0...100)
        currentValue = lroundf(slider.value)
        updateTargetLabel()
    }
    
    @IBAction func guessNumberPressed(_ sender: Any) {
    //5. New Variable message that displays a message that includes currentValue
            // modified message for part 3
        let message = "The value is:\(currentValue)" + "\nThe Target value is: \(targetValue)"
        
    //1. create alert view
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
        
    //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "New Round" ,style: .default, handler: nil)
        
    //3. add the button to the alert view
        alert.addAction(action)
        
    //4. present alertview on the screen
        present(alert, animated: true, completion : nil)
        
        startNewRound()
    }
    
}

