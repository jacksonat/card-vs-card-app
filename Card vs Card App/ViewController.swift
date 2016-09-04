//
//  ViewController.swift
//  Card vs Card App
//
//  Created by Jackson Taylor on 1/09/2016.
//  Copyright © 2016 Jackson Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    
    @IBOutlet weak var secondCardImageView: UIImageView!
    
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var cardNamesArray: [String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
    
        // Randomize a number for the first image view
        let firstRandomNumber: Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let firstCardString: String = self.cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the random number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Randomize a number for the second image view
        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let secondCardString: String = self.cardNamesArray[secondRandomNumber]
        
        // Set the second card image view to the asset corresponding to the random number
        self.secondCardImageView.image = UIImage(named: secondCardString)
    
    }

}

