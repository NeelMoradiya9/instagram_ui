
import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var login: UIButton!
 
    @IBOutlet weak var t3: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        

    }
    
    @IBAction func action(_ sender: Any) {
        
        if t3.text == ""
        {
            alert1(message: "Enter The Email address or phone number")
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
        let naviga = storyboard?.instantiateViewController(identifier: "ViewController10")
        as! ViewController10
        navigationController?.pushViewController(naviga , animated: true)
    }

}
