//
//  task.swift
//  TODO APP
//
//  Created by Hamza Khan on 10/07/2017.
//  Copyright © 2017 Hamza Khan. All rights reserved.
//

import UIKit
import FirebaseDatabase

class task: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var todoRef:DatabaseReference!
    var todoarray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.todoRef = Database.database().reference()
        print(todoRef)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addbutton(_ sender: AnyObject) {
        
        let alertVC = UIAlertController(title: "Add Task", message: "", preferredStyle:UIAlertControllerStyle.alert)
        
        alertVC.addTextField{(textfield)in
        textfield.placeholder = "Add task"
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alertVC.addAction(cancel)
        
        let savebutton = UIAlertAction(title: "Save", style: .default) { (action) in
            print("save pressed")
            let text = alertVC.textFields![0].text
            self.todoarray.append(text!)
            self.tableview.reloadData()
            
        }
            alertVC.addAction(savebutton)
        self.present(alertVC, animated: true, completion: nil)
    }
}
extension task: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todoarray.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = self.todoarray[indexPath.row]

        return cell
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
           
            let alertVC = UIAlertController(title: "Edit Task", message: "", preferredStyle:UIAlertControllerStyle.alert)
            
            alertVC.addTextField{(textfield)in
                textfield.text = self.todoarray[indexPath.row]
            }
            
            let Discard = UIAlertAction(title: "Discard", style: .default, handler: nil)
            alertVC.addAction(Discard)
            
            let savebutton = UIAlertAction(title: "Save", style: .default) { (action) in
                print("save pressed")
                let text = alertVC.textFields![0].text
                self.todoarray[indexPath.row] = text!
                self.tableview.reloadData()
                
            }
            alertVC.addAction(savebutton)
            self.present(alertVC, animated: true, completion: nil)
        }

        }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            self.todoarray.remove(at: indexPath.row)
            self.tableview.reloadData()
        }
    }
    }


