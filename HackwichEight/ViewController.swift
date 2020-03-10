//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 Joseph Payongayong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value)")
    }
    @IBAction func guessNumberPressed(_ sender: Any) {
    //1. create alert view
        let alert = UIAlertController(title:"Hello World!", message: "This is my first alert view", preferredStyle: .alert)
        
    //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome" ,style: .default, handler: nil)
        
    //3. add the button to the alert view
        alert.addAction(action)
        
    //4. present alertview on the screen
        present(alert, animated: true, completion : nil)
    }
    
}

