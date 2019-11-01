//
//  ViewController.swift
//  C0766348_MidTerm_MAD3115F2019-iOS
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController
{

    @IBOutlet weak var txtuserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btlLogin(_ sender: UIBarButtonItem)
    {
        self.validateUser()
    }
    func validateUser()
    {
        if(txtuserName.text == "bushair@gmail.com" && txtPassword.text == "bushair123")
        {
            let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
            self.present(nextVC, animated: true, completion: nil)
            
        }
        else
        {
             //Create AlertController Object
            let alert  =
                UIAlertController(title: "Error", message: "User Email / Password incorrect", preferredStyle: UIAlertController.Style.alert)
            //UIAlertController.Style.alert
            
            //Step - 2
            //OK Button add
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            //Step - 3
            //Add Button to Alert
            alert.addAction(actionOk)
            
            //Step - 4
            //Present Alert Dialog to the user
            self.present(alert, animated: true, completion: nil)
        }
    }
    

    

}

