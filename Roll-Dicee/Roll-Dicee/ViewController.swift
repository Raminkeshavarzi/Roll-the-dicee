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
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
//Global Variables

    
//Functions
    @IBAction func keyPressed(_ sender: Any) {
        backgroundImage.alpha = 0.8
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            rollDicee()
            self.backgroundImage.alpha = 1.0
    }
    
    func rollDicee () {
        let randomNumberLeft = Int.random(in: 0...5)
        let randomNumberRight = Int.random(in: 0...5)
        let arrOfImg = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]

        diceImgViewOne.image = arrOfImg [randomNumberLeft]
        diceImgViewTwo.image = arrOfImg [randomNumberRight]
        diceImgViewOne.alpha = 0.9
        diceImgViewTwo.alpha = 0.9
        logoImg.alpha = 1
        }
    }
}
