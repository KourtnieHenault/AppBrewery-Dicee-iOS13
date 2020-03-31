//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDieImageView: UIImageView!
    @IBOutlet weak var secondDieImageView: UIImageView!
    let initialValue = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstDieImageView.image = UIImage.init(named: "Dice\(initialValue)")
        secondDieImageView.image = UIImage.init(named: "Dice\(initialValue)")
        
    }
    
    @IBAction func rollButtonTapped(_ sender: Any) {
        rollDice()
    }
    
    
    func rollDice(){
        let firstDieRoll = Int.random(in: 1...6)
        let secondDieRoll = Int.random(in: 1...6)
        
        firstDieImageView.image = UIImage.init(named: "Dice\(firstDieRoll)")
        secondDieImageView.image = UIImage.init(named: "Dice\(secondDieRoll)")
    }


}

