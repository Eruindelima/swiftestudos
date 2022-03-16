//
//  ExtractViewController.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 09/03/22.
//

import UIKit
import SVProgressHUD


class ExtractViewController: UIViewController, ExtractDelegate {
    
    
    var formattedData = DataFormatting()
    var extracts: [ValuesExtract] = []
    var service = Service()
    var user: AcessModel?
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userCPFLabel: UILabel!
    @IBOutlet weak var balanceUserLabel: UILabel!
    @IBOutlet weak var backgraundGRD: UIView!
    
    @IBOutlet weak var extractUser: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.delegateExtract = self
        extractUser.delegate = self
        extractUser.dataSource = self
        
        gradientTableView()
        getData()
        requestExtract()
        
    }
    
    func gradientTableView() {
        let backGradiente = self.backgraundGRD
        let gradiente = CAGradientLayer()
        let firstColor = UIColor(red: 0.6941176471, green: 0.7803921569, blue: 0.8941176471, alpha: 1)
        let lastColor = UIColor(red: 0.1958471239, green: 0.4886431694, blue: 0.7751893401, alpha: 1)
        gradiente.frame = self.backgraundGRD!.bounds
        gradiente.frame = view!.bounds
        gradiente.colors = [firstColor.cgColor, lastColor.cgColor]
        gradiente.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradiente.endPoint = CGPoint(x: 1.0, y: 1.1)
        backgraundGRD!.layer.insertSublayer(gradiente, at: 0)
    }
}



// MARK: - USER EXTRACTS INFORMATION
extension ExtractViewController {
    func getData(){
        if let safeUser = user {
            self.userNameLabel.text = safeUser.nome
            self.userCPFLabel.text = "\(formattedData.formatCpf(cpf: safeUser.cpf))"
            self.balanceUserLabel.text = "R$\(formattedData.formatValue(value: safeUser.saldo))"
        }
    }
}
// MARK: - END USER EXTRACTS INFORMATION



// MARK: - EXTRACT REQUEST
extension ExtractViewController {
    func requestExtract() {
        service.requestExtract(token: user!.token, delegate: service.delegateExtract as! ExtractDelegate)
    }
}
// MARK: - END USER EXTRACTS INFORMATION




// MARK: - TABLE VIEW
extension ExtractViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return extracts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = extractUser.dequeueReusableCell(withIdentifier: "extractCellTable", for: indexPath) as! ExtractCellTable
        cell.layoutSubviews()
        cell.start(extracts: extracts[indexPath.row])
        
        return cell
    }
    
    func didExtract(extracts: [ValuesExtract]) {
        DispatchQueue.main.async {
            self.extracts = extracts
            self.extractUser.reloadData()
            SVProgressHUD.dismiss()
        }
        
    }
    
}
// MARK: - END TABLE VIEW



//MARK: - LOGOUT
extension ExtractViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "logOut" {
                let login = segue.destination as! LoginViewController
                self.dismiss(animated: true, completion: nil)
            }
        }
    
    @IBAction func logOutButton(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "logOut", sender: self)
        }
    }
}
// MARK: - END LOGOUT


