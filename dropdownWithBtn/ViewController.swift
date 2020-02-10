//
//  ViewController.swift
//  dropdownWithBtn
//
//  Created by Sridatta Nallamilli on 02/01/20.
//  Copyright © 2020 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectFood: UIButton!
    @IBOutlet var foodItems: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectFood.layer.cornerRadius = selectFood.frame.height / 2.0
        
        foodItems.forEach { (foodBtn) in
            foodBtn.layer.cornerRadius = foodBtn.frame.height / 2.0
            foodBtn.isHidden = true
        }
        
    }

    @IBAction func selectFoodPressed(_ sender: UIButton) {
        foodItems.forEach { (foodBtn) in
            UIView.animate(withDuration: 0.3, animations: {
                foodBtn.isHidden = !foodBtn.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func foodItemPressed(_ sender: UIButton) {
        
        let selectFoodLbl = sender.titleLabel!.text
        print(selectFoodLbl!)
        
        selectFood.setTitle("\(selectFoodLbl!)", for: .normal)
        
        foodItems.forEach { (foodBtn) in
            UIView.animate(withDuration: 0.2, animations: {
                foodBtn.isHidden = true
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    
}

