//
//  CreateTaskViewController.swift
//  DOIT
//
//  Created by Tim Van heester on 12/07/18.
//  Copyright © 2018 Tim Van heester. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    //var previousVC = TasksViewController() zegt welke de vorige vieuwcontroler is .
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func addTapped(_ sender: Any) {
    
        // zo creër je een nieuwe taak.
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // zo voeg je de taak toe aan de vorige viewcontroller en laat je de data resfreshen 
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
        
    }
}
