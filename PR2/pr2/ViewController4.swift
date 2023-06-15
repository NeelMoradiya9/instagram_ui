//
//  ViewController4.swift
//  pr2
//
//  Created by Neel  on 13/06/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var t1: UITextField!
    
   
    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        login.layer.cornerRadius = 5
        
    }

    @IBAction func login(_ sender: Any) {
        
        if t1.text == ""
        {
            alert1( message: " Enter Your Username....")
        }
        
        else
        {
            navigate()
        }
        
        
    }
    
    func alert1( message:String)
    {

        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
       present(a, animated: true)

    }
    
    func navigate()
    {
        let a = storyboard?.instantiateViewController(identifier: "ViewController12") as! ViewController12
        navigationController?.pushViewController(a, animated: true)
    }
}
