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
    
    
    @IBAction func btnLogin(_ sender: UIBarButtonItem)
    {
        //stackoverflow.com/signout-implimentation-swift
        
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
        
        let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDel.window?.rootViewController = loginVC
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
            
            let alert  =
                
                UIAlertController(title: "Error", message: "User Email / Password incorrect", preferredStyle: UIAlertController.Style.alert)
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
    }
}
    
    
      
    
    

    



