//
//  ViewController12.swift
//  pr2
//
//  Created by Neel  on 15/06/23.
//

import UIKit

class ViewController12: UIViewController {
    

    @IBOutlet weak var otp: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    
    @IBAction func enter(_ sender: Any) {
        if otp.text == ""
        {
            alert1(message: "Enter The Phone Number or email address...")
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
        let naviga = storyboard?.instantiateViewController(identifier: "ViewController14")
        as! ViewController14
        navigationController?.pushViewController(naviga , animated: true)
    }
    

}
