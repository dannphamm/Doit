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
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // create a task from the outlet information
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // save pop back
        
     
     
        navigationController!.popViewController(animated: true)
    }
        

}
