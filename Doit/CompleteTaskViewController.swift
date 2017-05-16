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
    var task : Task? =  nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            
            taskLabel?.text = "❗️\(task!.name!)"
        } else {
            
            taskLabel?.text = task!.name!
        }
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
         let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
