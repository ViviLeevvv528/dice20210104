//
//  ViewController.swift
//  dice20210104
//
//  Created by Vivi Lee on 2021/1/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var PCdiceImageViews: [UIImageView]!
    
    @IBOutlet var YoudiceImageViews: [UIImageView]!
    
    @IBOutlet weak var resultImage: UIImageView!
    var PC = ["dice1","dice2","dice3"]
    var You = ["dice4","dice5","dice6"]
    var sumPC = 0
    var sumYou = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.isHidden = true
    }

    @IBAction func actionBtn(_ sender: UIButton) {
        for imageView in PCdiceImageViews {
        let number = Int.random(in: 1...6)
        imageView.image = UIImage(systemName: "die.face.\(number).fill")
        }
        for imageView in YoudiceImageViews {
        let number = Int.random(in: 1...6)
        imageView.image = UIImage(systemName: "die.face.\(number).fill")
        }

        resultImage.image = UIImage(named: "win")
        
        resultImage.image = UIImage(named: "lose")
        

    }
    
}

