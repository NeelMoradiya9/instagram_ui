//
//  ViewController8.swift
//  pr2
//
//  Created by Neel  on 14/06/23.
//

import UIKit

class ViewController8: UIViewController {
    var time = Timer()
    
    @IBOutlet weak var pgbar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pgbar.progress = 0.0
        progressbar()
        
    }
    func progressbar()
    {
        var a = pgbar.progress
        
        time = Timer.scheduledTimer(withTimeInterval: 0.06, repeats: true) { _ in
            a += 0.01
            self.pgbar.progress = a
            print(self.pgbar.progress)
            if self.pgbar.progress == 1.0
                
            {
                self.pgbar.progress = 0.0
                self.time.invalidate()
                navigate()
                
            }
            
            func navigate()
            {
                let a = self.storyboard?.instantiateViewController(identifier: "ViewController9") as! ViewController9
                self.navigationController?.pushViewController(a, animated: true)
                
            }
        }
        
    }
}
