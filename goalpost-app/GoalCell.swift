//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Macbook Air on 30.08.17.
//  Copyright © 2017 Aleksandr Shenshin. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    
    @IBOutlet weak var goalTypeLbl: UILabel!
    
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description:String, type:String, goalProgressAmount:Int){
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }

}
