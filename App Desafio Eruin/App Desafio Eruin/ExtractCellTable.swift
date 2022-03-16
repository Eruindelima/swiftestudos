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
    
    var formatValues = DataFormatting()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyShadow()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        fieldExtract.layer.cornerRadius = 10
    }
    
    
    func applyShadow(){
        fieldExtract.layer.masksToBounds = false
        fieldExtract.layer.shadowRadius = 4.0
        fieldExtract.layer.shadowOpacity = 0.60
        fieldExtract.layer.shadowColor = UIColor.gray.cgColor
        fieldExtract.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
    
    func start(extracts: ValuesExtract!) {
        let extract = extracts!
        if extract.valor <= 0.0 {
            self.actionTypeLabel.text = "Pagamento"
            self.descriptionTypeLabel.text = extract.descricao
            self.dataActionLabel.text = formatValues.formatDate(date: extract.data)
            self.cashValueLabel.text = "R$\(formatValues.formatValue(value: extract.valor))"
            self.cashValueLabel.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        } else {
            self.actionTypeLabel.text = "Recebimento"
            self.descriptionTypeLabel.text = extract.descricao
            self.dataActionLabel.text = formatValues.formatDate(date: extract.data)
            self.cashValueLabel.text = "R$\(formatValues.formatValue(value: extract.valor))"
            self.cashValueLabel.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
    }
}
