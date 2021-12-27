//
//  Calculations.swift
//  Star Weather (iOS)
//
//  Created by Jordan Belinsky on 2021-12-26.
//

import Foundation

var weather: ResponseBody = previewWeather

func selectIcon(weather: ResponseBody) -> String {
    let status = weather.weather[0].main
    
    switch status {
    case "Thunderstorm":
        return "cloud.bolt"
    case "Drizzle":
        return "cloud.drizzle"
    case "Rain":
        return "cloud.rain"
    case "Snow":
        return "cloud.snow"
    case "Clear":
        return "sun.max"
    case "Clouds":
        return "cloud"
    default:
        return "cloud.fog"
    }
}

func phrase(weather: ResponseBody) -> String {
    let conditionID = weather.weather[0].id
    
    switch conditionID {
    case 300.0, 301.0, 302.0, 310.0, 311.0, 312.0, 313.0, 314.0, 321.0, 500.0, 501.0, 502.0, 503.0, 504.0, 511.0, 520.0, 521.0, 522.0, 531.0:
        return "It's raining like Kamino out there."
    case 600.0, 601.0, 602.0, 611.0, 612.0, 613.0, 615.0, 616.0, 620.0, 621.0, 622.0:
        return "It's snowing like Hoth out there."
    case 800.0, 731.0, 751.0, 761.0, 771.0:
        return "It's clear like Tatooine out there."
    case 801.0, 802.0, 701.0, 762.0:
        return "It's partly cloudy/foggy like Endor out there."
    case 803.0, 711.0, 741.0:
        return "It's mostly cloudy like Yavin-4 out there."
    case 804.0, 721.0:
        return "It's overcast and hazy like Bespin out there."
    default:
        return "No idea, it must be gone like Alderaan."
    }
}

func getPlanet(conditionID: Double) -> String {
    switch conditionID {
    case 300.0, 301.0, 302.0, 310.0, 311.0, 312.0, 313.0, 314.0, 321.0, 500.0, 501.0, 502.0, 503.0, 504.0, 511.0, 520.0, 521.0, 522.0, 531.0:
        return "Kamino"
    case 600.0, 601.0, 602.0, 611.0, 612.0, 613.0, 615.0, 616.0, 620.0, 621.0, 622.0:
        return "Hoth"
    case 800.0, 731.0, 751.0, 761.0, 771.0:
        return "Tatooine"
    case 801.0, 802.0, 701.0, 762.0:
        return "Endor"
    case 803.0, 711.0, 741.0:
        return "Yavin-4"
    case 804.0, 721.0:
        return "Bespin"
    default:
        return "Alderaan"
    }
}

func bgPhoto(weather: ResponseBody) -> String {
    let conditionID = weather.weather[0].id
    let planet = getPlanet(conditionID: conditionID)
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
        
    case 0..<7:
        return "\(planet)-Night"
    case 7..<20:
        return "\(planet)-Day"
    case 20..<24:
        return "\(planet)-Night"
    default:
        return ""
    }
}
