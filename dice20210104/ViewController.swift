//
//  ViewController.swift
//  dice20210104
//
//  Created by Vivi Lee on 2021/1/4.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var diceImageViews: [UIImageView]!

    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.isHidden = true
    }

    @IBAction func actionBtn(_ sender: UIButton) {
        for imageView in diceImageViews {
        let number = Int.random(in: 1...6)
        imageView.image = UIImage(systemName: "die.face.\(number).fill")
        var sumPC = 0
        for i in 1...3{
            sumPC = sumPC + i
            print(sumPC)
        }
        
        
        }

        resultImage.image = UIImage(named: "win")
        
        resultImage.image = UIImage(named: "lose")
        

    }
    
}

