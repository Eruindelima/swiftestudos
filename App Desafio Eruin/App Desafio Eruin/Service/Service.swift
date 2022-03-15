//
//  Service.swift
//  App Desafio Eruin
//
//  Created by Virtual Machine on 14/03/22.
//

import Foundation
import UIKit

protocol AcessDelegate: NSObjectProtocol {
    func logInto(user: AcessModel)
}


class Service {
    
    var delegateLogInto: AcessDelegate?
    
    let loginURL = "https://api.mobile.test.solutis.xyz/"
    
    
    func requestLogin(userName: String, password: String) {
        
        let pastData = ["username": userName, "password": password] as Dictionary <String, String>
        
        var request = URLRequest(url: URL(string: "https://api.mobile.test.solutis.xyz/login")!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: pastData, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) {(data, response, error) in
            if error != nil {
                print(error!)
            }
            

            
            if let safeData = data {
                if let user = self.parseAcessJSON(acessData: safeData) {
                 self.delegateLogInto?.logInto(user: user)

                }
            }
        }
        task.resume()
    }
    
    func parseAcessJSON(acessData: Data) -> AcessModel? {
        let decoder = JSONDecoder()
        do {
            let decoderData = try decoder.decode(AcessModel.self, from: acessData)
            let name = decoderData.nome
            let cpf = decoderData.cpf
            let balance = decoderData.saldo
            let token = decoderData.token
            let acessModel = AcessModel(nome: name, cpf: cpf, saldo: balance, token: token)
            return acessModel
        } catch {
            print(error)
            return nil
        }
    }
    
    
    
}
