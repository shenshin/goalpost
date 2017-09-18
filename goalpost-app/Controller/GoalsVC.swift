//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Aleksandr Shenshin on 24.08.17.
//  Copyright © 2017 Aleksandr Shenshin. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var welcomeMessage: UIStackView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isHidden = true
        self.welcomeMessage.isHidden = false
      
    }

    @IBAction func addGoalBtnWasPressed(_ sender: UIButton) {
        if self.tableView != nil, self.welcomeMessage != nil {
            if self.tableView.isHidden { //если таблица спрятана,
                self.tableView.isHidden = false //показать таблицу
                self.welcomeMessage.isHidden = true //убрать приветствие
            } else { //если таблица показана
                self.tableView.isHidden = true //убрать таблицу
                self.welcomeMessage.isHidden = false //показать приветствие
            }
        }
    }
    

}

