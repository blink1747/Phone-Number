//
//  ViewController.swift
//  Phone Number
//
//  Created by IMCS on 8/14/19.
//  Copyright © 2019 IMCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var Message: UILabel!
    @IBOutlet weak var saveUpdateButton: UIButton!
    
    
    
    @IBAction func nameFieldChangedAction(_ sender: UITextField) {
        
        if let savedPhone = UserDefaults.standard.value(forKey: nameField.text!)  {
            saveUpdateButton.setTitle("Update", for: .normal)
            //   nameField.text = savedName as? String
            phoneNumber.text = savedPhone as! String
          //  print(phoneNumber.text)
        }else {
            saveUpdateButton.setTitle("Save", for: .normal)
            phoneNumber.text = ""
            Message.text = ""
        }
        
    }
    
    
    
    @IBAction func saveUpdateAction(_ sender: Any) {
        
        let saveName = nameField.text
        let savePhone = phoneNumber.text
        //good
        if saveName == ""  || savePhone!.count != 10 {
            Message.text = "Invalid Input."
        }
            
        else{
            UserDefaults.standard.set(phoneNumber.text, forKey: nameField.text ?? "")
            Message.text = "Contact Saved."
            //  print(nameField.text!, phoneNumber.text!)
        }
    }
}
