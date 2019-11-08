//
//  AddNewCustomerViewController.swift
//  Project
//
//  Created by vamsi on 06/11/19.
//  Copyright © 2019 vamsi. All rights reserved.
//

import UIKit

protocol AddNewCustomerViewControllerDelegate:NSObject {
    func didSelectSaveBtn(_ name:String)
}

class AddNewCustomerViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    weak var delegate:AddNewCustomerViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveBtntapped(_ sender: Any) {
      
}
