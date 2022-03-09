//
//  ViewController.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 09/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "Information", sender: self)
    }
    
}

