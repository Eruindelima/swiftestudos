//
//  DataFormatting.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 16/03/22.
//

import Foundation


struct DataFormatting {
    
    var user: ValuesExtract?
    
    func formatValue(value: Double ) -> String {
        let numberFormatter = NumberFormatter()
        
        numberFormatter.locale = Locale(identifier: "pt_BR")
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(from: NSNumber(value: value))!
    }
    
    func formatDate(date: String) -> String {
        let dateFormatStart = DateFormatter()
        dateFormatStart.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let dateFormatEnd = DateFormatter()
        dateFormatEnd.dateFormat = "dd/MM/yyyy"
        
        var dateFormat = dateFormatStart.date(from: date)
        var dateFormatString = dateFormatEnd.string(from: dateFormat!)
        return dateFormatString
    }
    
    func formatCpf(cpf: String) -> String {
        
        if cpf.count == 11 {
        var characters = Array(cpf)
        characters.insert(".", at: 3)
        characters.insert(".", at: 7)
        characters.insert("-", at: 11)
        
        let masked = String(characters)
        return masked
        } else {
            var characters = Array(cpf)
            
            characters.insert(".", at: 2)
            characters.insert(".", at: 6)
            characters.insert("/", at: 9)
            characters.insert("-", at: 13)
                        
            let masked = String(characters)
            return masked
        }
    }
    
    
}
