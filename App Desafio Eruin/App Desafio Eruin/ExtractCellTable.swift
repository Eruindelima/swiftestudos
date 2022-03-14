//
//  ExtractCellTable.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 14/03/22.
//

import UIKit

class ExtractCellTable: UITableViewCell {

    @IBOutlet weak var fieldExtract: UIView!
    
    @IBOutlet weak var actionTypeLabel: UILabel!
    @IBOutlet weak var dataActionLabel: UILabel!
    @IBOutlet weak var descriptionTypeLabel: UILabel!
    @IBOutlet weak var cashValueLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
