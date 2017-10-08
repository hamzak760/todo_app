//
//  Sign in page.swift
//  TODO APP
//
//  Created by Hamza Khan on 10/07/2017.
//  Copyright © 2017 Hamza Khan. All rights reserved.
//

import UIKit

class Sign_in_page: UIViewController {

    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var passwordtextfield: UITextField!
    @IBAction func signin(_ sender: AnyObject) {
        performSegue(withIdentifier: "task", sender:self)
    }
    @IBAction func register(_ sender: AnyObject) {
    performSegue(withIdentifier: "register", sender:self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
