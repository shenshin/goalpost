//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Aleksandr Shenshin on 20.09.2017.
//  Copyright © 2017 Aleksandr Shenshin. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func longTermBtnWasPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func nextBtnWasPressed(_ sender: UIButton) {
        
    }
    @IBAction func backBtnWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
