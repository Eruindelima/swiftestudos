//
//  AcessModel.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 11/03/22.
//

import Foundation
import CPF_CNPJ_Validator

struct AcessModel: Decodable {
    let nome: String
    let cpf: String
    let saldo: Double
    let token: String
}


struct ValidationAcessModel {
    
    let userField : String
    let passwordfField : String
    
    
    func validateUserField(_ user: String) -> Bool {
        let userRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let validateRegex = NSPredicate(format: "SELF MATCHES %@", userRegex)
        return validateRegex.evaluate(with: user)
    }
    
    func validatePasswordField(_ password: String) -> Bool {
        let passwordRegex = "^(.*[a-z]*.)(.*[0-9]*.)(.*[!@#$%^&*]*.)$"
            let validateRegex = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return validateRegex.evaluate(with: password)
    }
    
    func validateCPF(_ cpf: String) -> Bool {
        let cpf = BooleanValidator().validate(cpf, kind: .CPF)
        return cpf
    }
}
