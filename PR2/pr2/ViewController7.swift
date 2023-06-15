//
//  ViewController7.swift
//  pr2
//
//  Created by Neel  on 14/06/23.
//

import UIKit

class ViewController7: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    

    @IBAction func login(_ sender: Any) {
        navigation()
    }
    func navigation()
    {
        let a = storyboard?.instantiateViewController(identifier: "ViewController2")
        as!
        ViewController2
        navigationController?.popToRootViewController(animated: true)
    }
}
