//
//  ExtractViewController.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 09/03/22.
//

import UIKit
import SVProgressHUD


class ExtractViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userCPFLabel: UILabel!
    @IBOutlet weak var balanceUserLabel: UILabel!
    
    @IBOutlet weak var extractUser: UITableView!
    
    
    
    
    
    var extracts: [ValuesExtract] = []
    var service = Service()
    var user: AcessModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractUser.delegate = self
        extractUser.dataSource = self
        // Do any additional setup after loading the view.
    }
}


// MARK: - TABLE VIEW
extension ExtractViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return extracts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = extractUser.dequeueReusableCell(withIdentifier: "extractCellTable", for: indexPath) as! ExtractCellTable
        
        //cell.start(extractModel: extract[indexPath.row])
        
        return cell
    }
    
    func extractsMade(extracts: [ValuesExtract]) {
        self.extracts = extracts
        self.extractUser.reloadData()
        SVProgressHUD.dismiss()
    }
}


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



