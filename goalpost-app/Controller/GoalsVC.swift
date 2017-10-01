//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Aleksandr Shenshin on 24.08.17.
//  Copyright © 2017 Aleksandr Shenshin. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController  {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var welcomeMessage: UIStackView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isHidden = false
        self.welcomeMessage.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
      
    }

    @IBAction func addGoalBtnWasPressed(_ sender: UIButton) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {return}
        presentDetail(createGoalVC)
    }
}
//MARK: tableView инициализация
//  забавный способ разделения класса на части, отвечающие за различные функции -  это создание расширения для класса с включением необходимой функции
/*  Для работы TableView необходимо, чтобы класс соответствовал двум протоколам (UITableViewDelegate, UITableViewDataSource) и реализовывал как минимум три метода из этих протоколов (numberOfSections, numberOfRowsInSection, cellForRowAt indexPath), а также не забыть указать делегат и источник данных (tableView.delegate = self,  tableView.dataSource = self). Последнее делается в методе viewDidLoad()  */

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell()}
        cell.configureCell(description: "Кушай салат 2 раза в неделю", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}
















