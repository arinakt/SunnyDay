//
//  CurrentWeather.swift
//  sunnyDay
//
//  Created by Арина on 28.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    let pressure: Int
    var pressureString: String {
        return "\(pressure)"
    }
    
    let humidity: Int
    var humidityString: String {
        return "\(humidity)"
    }
    
    let tempMin: Double
    var tempMinString: String {
        return String(format: "%.0f", tempMin)
    }
    
    let tempMax: Double
    var tempMaxString: String {
        return String(format: "%.0f", tempMax)
    }
    
    let speed: Double
    var speedString: String {
        return String(format: "%.0f", speed)
    }
    
    let main: String
    
    /*let conditionCode: Int
    var systemIconString: String {
        switch conditionCode {
        case 200...232: return "cloud.rain.fill"
        case 300...321: return "cloud.drizzle"
        case 500...531: return "cloud.rain"
        case 600...622: return "cloud.snow"
        case 701...781: return "smoke"
        case 800: return "sun"
        case 801...804: return "cloud"
        default:
            return "nosign"
        }
    }*/
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        pressure = currentWeatherData.main.pressure
        humidity = currentWeatherData.main.humidity
        tempMin = currentWeatherData.main.tempMin
        tempMax = currentWeatherData.main.tempMax
        speed = currentWeatherData.wind.speed
        main = currentWeatherData.weather.first!.main
    }
}
