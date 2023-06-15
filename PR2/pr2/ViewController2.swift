//
//  ViewController2.swift
//  pr2
//
//  Created by R82 on 13/06/23.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.layer.cornerRadius = 5
    }
    
    @IBAction func feed(_ sender: Any) {
        navigation()
    }
    
    func navigation()
    {
        let a = storyboard?.instantiateViewController(identifier: "ViewController6")
        as! ViewController6
        navigationController?.pushViewController(a
                                                 , animated: true)
    }
}
