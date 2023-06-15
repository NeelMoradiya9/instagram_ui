//
//  ViewController14.swift
//  pr2
//
//  Created by Neel  on 15/06/23.
//

import UIKit

class ViewController14: UIViewController {

    @IBOutlet weak var user: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func login(_ sender: Any) {
        
        if user.text == ""
        {
            alert1(message: "Enter The  4 digit otp...")
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
        let naviga = storyboard?.instantiateViewController(identifier: "ViewController13")
        as! ViewController13
        navigationController?.pushViewController(naviga , animated: true)
    }
}
    

