


//teste@test.com.br
//abc123@

import UIKit

class LoginViewController: UIViewController, AcessDelegate {
    
    
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var warningLabel: UILabel!
    
    var service = Service()
    var user: AcessModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 25
    
        service.delegateLogInto = self
        userField.delegate = self
        passwordField.delegate = self
    }
    
    
    
    
}
//MARK: -



// MARK: - VALIDATION LOGIN

extension LoginViewController: UITextFieldDelegate {
    
    func validateFileds( userFiled: String, passwordField: String) {
        let acessModel = ValidationAcessModel(userField: userFiled, passwordfField: passwordField)
        
        if acessModel.validateUserField(userFiled) || acessModel.validateCPF(userFiled){
            if acessModel.validatePasswordField(passwordField) {
                service.requestLogin(userName: userFiled, password: passwordField)
            } else {
                warningLabel.text = "User or Password Invalid"
            }
        } else {
            warningLabel.text = "User or Password Invalid"
        }
    }
    
    func logInto(user: AcessModel) {
        DispatchQueue.main.async {
            self.loginButton.isUserInteractionEnabled = true
            self.user = user
            self.performSegue(withIdentifier: "Informations", sender: self)
        }
    }
}
// MARK: - FINISH VALIDATION LOGIN


// MARK: - TRANSITION VIEW
extension LoginViewController {
    @IBAction func loginButton(_ sender: UIButton) {
        
        self.loginButton.isUserInteractionEnabled = false
        
        guard let userField = userField.text else {return }
        guard let passwordField = passwordField.text else {return }
        //self.performSegue(withIdentifier: "Information", sender: self)
        validateFileds(userFiled: userField, passwordField: passwordField)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Informations" {
            let login = segue.destination as! ExtractViewController
            login.user = user
            self.dismiss(animated: false, completion: nil)
        }
    }
    
    
}
// MARK: - FINISH TRASITION VIEW

extension LoginViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        setupLogin()
    }
    
    func setupLogin() {
        self.userField.text = ""
        self.passwordField.text = ""
    }
}
