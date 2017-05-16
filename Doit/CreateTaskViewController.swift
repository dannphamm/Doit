//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Dung Pham on 5/15/17.
//  Copyright © 2017 Dung Pham. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // create a task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
        

}
