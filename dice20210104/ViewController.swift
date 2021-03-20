//
//  ViewController.swift
//  dice20210104
//
//  Created by Vivi Lee on 2021/1/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dicePCImageview: [UIImageView]!
    
    @IBOutlet var diceYouImageview: [UIImageView]!
    
    @IBOutlet weak var resultImage: UIImageView!
    var sumPC = 0
    var sumYou = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.isHidden = true
    }

    @IBAction func actionBtn(_ sender: UIButton) {
        for imageViewA in dicePCImageview {
        let numberPC = Int.random(in: 1...6)
        imageViewA.image = UIImage(systemName: "dice.\(numberPC)")
        }
        for imageViewB in diceYouImageview {
        let numberYou = Int.random(in: 1...6)
        imageViewB.image = UIImage(systemName: "dice.\(numberYou)")
        }
    }

//
//        resultImage.image = UIImage(named: "win")
//
//        resultImage.image = UIImage(named: "lose")
        


    
}

