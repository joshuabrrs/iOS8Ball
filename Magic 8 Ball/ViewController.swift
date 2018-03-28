//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Joshua Barrios on 3/27/18.
//  Copyright © 2018 Joshua Barrios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //creating an array with all the images
    //random number is always set to 0
    let ballArray  = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNum : Int = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    //when the app opens it will open up a new random image
    override func viewDidLoad() {
        super.viewDidLoad()
        randomGenerator()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //ask button, when clicked it will create a trigger for random ball
    @IBAction func askButton(_ sender: UIButton) {
        randomGenerator()
    }
    
    //function for random generation, used throughout the program
    func randomGenerator(){
        
        randomBallNum = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNum])
    }
    
    //this is for motion detection
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomGenerator()
    }
}

