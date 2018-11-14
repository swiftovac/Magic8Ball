//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Stefan Milenkovic on 11/13/18.
//  Copyright © 2018 Stefan Milenkovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber: Int = 0
    let ballImageNames = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
      
    
    }

    @IBAction func askTapped(_ sender: UIButton) {
        
        updateBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballImageNames[randomBallNumber])
        
        
    }
    
}

