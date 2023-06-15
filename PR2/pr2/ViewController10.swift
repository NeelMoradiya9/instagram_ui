//
//  ViewController10.swift
//  pr2
//
//  Created by Neel  on 14/06/23.
//

import UIKit

class ViewController10: UIViewController {

    @IBOutlet weak var otp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func otpa(_ sender: Any) {
        
        if otp.text == ""
        {
            alert1(message: "Enter The 4 Digit OTP")
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
        let naviga = storyboard?.instantiateViewController(identifier: "ViewController11")
        as! ViewController11
        navigationController?.pushViewController(naviga , animated: true)
    }
}
