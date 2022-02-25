//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Virtual Machine on 22/02/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var total: Float?
    var percent: Float?
    var qtnPersons: Float?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var percentText: String = String(format: "%.0f", self.percent!)
        var qtnPersonsText: String = String(format: "%.0f", self.qtnPersons!)
        
        self.totalLabel.text = String(format: "%.2f", self.total!)
    
        
        self.settingLabel.text = "Split between " + qtnPersonsText + " people, with " + percentText + " %"


    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
}
