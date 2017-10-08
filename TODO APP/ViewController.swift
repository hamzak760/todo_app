//
//  ViewController.swift
//  TODO APP
//
//  Created by Hamza Khan on 10/07/2017.
//  Copyright © 2017 Hamza Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func button(_ sender: AnyObject) {
        performSegue(withIdentifier: "signin", sender: self)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

