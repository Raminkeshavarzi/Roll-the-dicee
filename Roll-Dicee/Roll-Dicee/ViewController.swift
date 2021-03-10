//
//  ViewController.swift
//  Roll-Dicee
//
//  Created by Ramin on 7/3/21.
//

import UIKit

class ViewController: UIViewController {
//Interface Builder Outlet
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var diceImgViewOne: UIImageView!
    @IBOutlet weak var diceImgViewTwo: UIImageView!
    @IBOutlet weak var label: UILabel!

    
//Global Variables
    var welcomeTxt = "Are you Ready?"
//Override Function
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        label.text = welcomeTxt
//    }


    
//Functions
    @IBAction func rollerFunction(_ sender: Any) {
        let randomNumberLeft = Int.random(in: 0..<5)
        let randomNumberRight = Int.random(in: 0..<5)
        let arrOfImg = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]

        diceImgViewOne.image = arrOfImg [randomNumberLeft]
        diceImgViewTwo.image = arrOfImg [randomNumberRight]
        diceImgViewOne.alpha = 0.9
        diceImgViewTwo.alpha = 0.9
        logoImg.alpha = 1
//label.text = "Kudos 🥳🥳"
    }
}

