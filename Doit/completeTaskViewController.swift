//
//  completeTaskViewController.swift
//  Doit
//
//  Created by Dung Pham on 5/16/17.
//  Copyright © 2017 Dung Pham. All rights reserved.
//

import UIKit

class completeTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    
    var previousVC = TasksViewController()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            
            taskLabel?.text = "❗️\(task.name)"
        } else {
            
            taskLabel?.text = task.name
        }
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
