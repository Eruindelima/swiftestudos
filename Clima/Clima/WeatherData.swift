//
//  WeatherData.swift
//  Clima
//
//  Created by Virtual Machine on 04/03/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation



struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    
}


struct Main: Codable {
    let temp: Double
}


struct Weather: Codable {
    let description: String
    let id: Int
}
