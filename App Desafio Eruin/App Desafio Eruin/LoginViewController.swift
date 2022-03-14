


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
        
        service.delegateLogInto = self
        loginButton.layer.cornerRadius = 25
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Informations" {
            let login = segue.destination as! ExtractViewController
            login.user = user
        }
    }
    
    func logInto(user: AcessModel) {
        DispatchQueue.main.async {
            self.user = user
            self.performSegue(withIdentifier: "Informations", sender: self)
        }
    }
    
    func errorLog() {
        print("Error")
    }
    
}

// MARK: - LOGIN

extension LoginViewController: UITextFieldDelegate {
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        guard let userField = userField.text else {return }
        guard let passwordField = passwordField.text else {return }
        //self.performSegue(withIdentifier: "Information", sender: self)
        
        validateFileds(userFiled: userField, passwordField: passwordField)
    }
    
    
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
    
}

