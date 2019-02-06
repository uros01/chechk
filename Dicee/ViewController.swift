//
//  ViewController.swift
//  Dicee
//
//  Created by student18 on 2/2/19.
//  Copyright © 2019 Uros Kalicanin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArry = ["dice1", "dice2", "dice3", "dice4","dice5", "dice6"]
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceeImageViwe1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print(randomDiceIndex1)
        
        diceeImageViwe1.image = UIImage(named: diceArry[randomDiceIndex1])
        diceeImageView2.image = UIImage(named: diceArry[randomDiceIndex2])
    }

    
}

