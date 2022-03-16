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

protocol ExtractDelegate: NSObjectProtocol {
    func didExtract(extracts: [ValuesExtract])
}

class Service {
    
    var delegateLogInto: AcessDelegate?
    var delegateExtract: ExtractDelegate?
    
    let loginURL = "https://api.mobile.test.solutis.xyz/"
    
    // MARK: - LOGIN REQUEST
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
    // MARK: - END LOGIN REQUEST
    
    
    // MARK: - EXTRACT REQUEST
    
    func requestExtract(token: String, delegate: ExtractDelegate) {
        
        var request = URLRequest(url: URL(string: "https://api.mobile.test.solutis.xyz/extrato")!)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(token, forHTTPHeaderField: "token")
        request.httpMethod = "GET"
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) { data, response, error in
            if error != nil {
                print(error)
            }
            if let safeData = data {
                if let extracts = self.parseJSONExtract(safeData) {
                    self.onResponseStatement(extracts: extracts)
                }
            }
        }
        task.resume()
    }
    
    func parseJSONExtract(_ extractData: Data) -> [ValuesExtract]? {
        let decoder = JSONDecoder()
        var extracts: [ValuesExtract] = []
        do {
            let decodeData = try decoder.decode([ValuesExtract].self, from: extractData)
            for i in decodeData {
                let data = i.data
                let descricao = i.descricao
                let valor = i.valor
                let extract = ValuesExtract(data: data, descricao: descricao, valor: valor)
                extracts.append(extract)
            }
            return extracts
        } catch {
            print(error)
            return nil
        }
    }
    
    func onResponseStatement(extracts: [ValuesExtract]){
        DispatchQueue.main.async {
            self.delegateExtract?.didExtract(extracts: extracts)
        }
    }
}

// MARK: - END EXTRACT REQUEST
