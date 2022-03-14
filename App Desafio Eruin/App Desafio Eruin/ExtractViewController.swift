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
    
    let extract: [ValuesExtract] = []
    var service = Service()
    
    
    //var user: LoginModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractUser.delegate = self
        extractUser.dataSource = self
        // Do any additional setup after loading the view.
    }
}



extension ExtractViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return extract.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = extractUser.dequeueReusableCell(withIdentifier: "extractCellTable", for: indexPath) as! ExtractCellTable
        
        //cell.start(extractModel: extract[indexPath.row])
        
        return cell
    }
    
    
}
