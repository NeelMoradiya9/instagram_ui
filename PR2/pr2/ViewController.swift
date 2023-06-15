//
//  ViewController.swift
//  pr2
//
//  Created by R82 on 13/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var create: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t1.layer.cornerRadius = 5
        t2.layer.cornerRadius = 5
        login.layer.cornerRadius = 5
    }

    @IBAction func create(_ sender: Any) {
     navigate1()
    }
    
    func navigate1()
    {
        let a = storyboard?.instantiateViewController(identifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(a, animated: true)
    }
    @IBAction func forgotbutton(_ sender: Any) {
        navigation1()
    }
        
        func navigation1()
        {
            let navigate = storyboard?.instantiateViewController(identifier: "ViewController3") as! ViewController3
            navigationController?.pushViewController(navigate, animated: true)
        }
        
    
    @IBAction func login(_ sender: Any) {
        
        if t1.text == "" && t2.text == ""
        {
            alert( message: "Enter Your User Name And password...")
        }
        else if t1.text == ""
        {
            alert(message: "Enter your username....")
        }
        else if t2.text == ""
        {
            alert(message: "Enter your password...")
        }
        else
        {
            navigation()
        }
    }

    func alert(message : String)
    {
        
        
        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
       present(a, animated: true)
 
        
    }
    
    func navigation()
    {
        let navigate = storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigate, animated: true)
    }
}

