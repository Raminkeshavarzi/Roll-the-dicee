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
    
    //Override Function
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//Functions
    @IBAction func rollerFunction(_ sender: Any) {
        diceImgViewOne.image = #imageLiteral(resourceName: "DiceSix")
        diceImgViewOne.alpha = 0.9
        diceImgViewTwo.image = #imageLiteral(resourceName: "DiceSix")
        diceImgViewTwo.alpha = 0.9
        label.text = "Kudos 🥳"
        logoImg.alpha = 1
    }
}

