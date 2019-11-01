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
       
    }
    

    

}

