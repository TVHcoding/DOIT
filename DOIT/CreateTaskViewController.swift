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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func addTapped(_ sender: Any) {
    
        // zo creër je een nieuwe taak.
        
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        navigationController!.popViewController(animated: true)
        
        
    }
}
