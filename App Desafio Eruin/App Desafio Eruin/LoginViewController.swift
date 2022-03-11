





import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var warningLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 25
    }

    @IBAction func loginButton(_ sender: UIButton) {
        
        
        self.performSegue(withIdentifier: "Information", sender: self)
        
        
    }
    
}


extension UITextField {
    
    
}

