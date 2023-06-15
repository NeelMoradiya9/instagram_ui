//
//  ViewController6.swift
//  pr2
//
//  Created by Neel  on 14/06/23.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.loadRequest(URLRequest(url: URL(string: "https://help.instagram.com/209709211058981/?helpref=uf_share")!))

    }
   
    
    
    
    

}
