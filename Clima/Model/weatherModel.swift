//
//  weatherModel.swift
//  Clima
//
//  Created by Darshil Agrawal on 14/07/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId : Int
    let temp : Double
    let cityName : String

    var conditionName : String {
        switch conditionId{
        case 200...232 :
            return "cloud"
        case 300...321 :
            return "cloud.drizzle"
        case 500...531 :
            return "cloud.rain"
        case 600...622 :
            return "cloud.snow"
        case 700...781 :
            return "sun.haze.fill"
        case 800 :
            return "cloud"
        case 801...804 :
            return "cloud.fill"
        default :
            return "Cloud"
        }
    }
    var tempString : String {
        return String(format: "%.1f", temp)
    }


}

