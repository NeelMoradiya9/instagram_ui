//
//  ViewController13.swift
//  pr2
//
//  Created by Neel  on 15/06/23.
//

import UIKit

class ViewController13: UIViewController {

    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
    @IBAction func login(_ sender: Any) {
        
        if t1.text == "" && t2.text == ""
        {
            alert( message: "Enter The New Password and confirm password...")
        }
        else if t1.text == ""
        {
            alert(message: "Enter The New Password....")
        }
        else if t2.text == ""
        {
            alert(message: "Enter your confirm password...")
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
        let navigate = storyboard?.instantiateViewController(identifier: "ViewController8") as! ViewController8
        
        navigationController?.pushViewController(navigate, animated: true)
    
        
    }
    

}
