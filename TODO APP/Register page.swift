//
//  Register page.swift
//  TODO APP
//
//  Created by Hamza Khan on 10/07/2017.
//  Copyright © 2017 Hamza Khan. All rights reserved.
//

import UIKit

class Register_page: UIViewController {

    @IBOutlet weak var usernametextfield: UITextField!
    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var passwordtextfield: UITextField!
    @IBOutlet weak var retypepassword: UITextField!
    @IBAction func createaccount(_ sender: AnyObject) {
    }
    @IBAction func alreadyaccount(_ sender: AnyObject) {
        performSegue(withIdentifier: "signin", sender:self)
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
