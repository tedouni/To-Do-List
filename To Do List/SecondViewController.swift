//
//  SecondViewController.swift
//  To Do List
//
//  Created by Tayseer Edouni on 8/5/15.
//  Copyright (c) 2015 Tayseer Edouni. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var aLabel: UILabel!
    
    @IBOutlet var aTextField: UITextField!
    
    @IBAction func aButton(sender: AnyObject) {
        
        toDoList.append(aTextField.text)
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        aTextField.text = ""

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.aTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField : UITextField) -> Bool{
        
        textField.resignFirstResponder()
        
        return true
        
    }



}

