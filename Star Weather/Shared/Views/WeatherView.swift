//
//  WeatherView.swift
//  Star Weather (iOS)
//
//  Created by Jordan Belinsky on 2021-12-26.
//

import SwiftUI

struct WeatherView: View {
    @State var weather: ResponseBody
    @State var weatherData: ResponseBody?
    var weatherManager = WeatherManager()
    @StateObject var locationManager = LocationManager()
    @State var weatherIcon = ""
    
    var body: some View {
        if let location = locationManager.location {
            LoadingView()
                .task {
                    do {
                        weatherData = try await weatherManager.getWeather(latitude: location.latitude, longitude: location.longitude)
                    } catch {
                        print("Error fetching weather: \(error)")
                    }
                }
        }
        
        ZStack(alignment: .leading) {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(weather.name)
                            .bold().font(.title)
                        
                        Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                            .fontWeight(.light)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(weather.main.feelsLike.roundDouble() + "°")
                        .font(.system(size: 60))
                        .fontWeight(.bold)

                }

                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(phrase(weather:weather))
                        .bold().padding(.bottom)
                    
                    HStack {
                        WeatherRow(logo: "thermometer", name: "Min temp", value: (weather.main.tempMin.roundDouble() + "°"))
                        
                        Spacer()
                        
                        WeatherRow(logo: "thermometer", name: "Max temp", value: (weather.main.tempMax.roundDouble() + "°"))
                    }
                    .padding(.leading, 12)
                    .padding(.trailing, 12)
                    
                    HStack {
                        WeatherRow(logo: "wind", name: "Min temp", value: (weather.wind.speed.roundDouble() + "m/s"))
                        
                        Spacer()
                        
                        WeatherRow(logo: "humidity", name: "Max temp", value: (weather.main.humidity.roundDouble() + "%"))
                            .padding(.trailing, -5)
                    }
                    .padding(.leading, 12)
                    .padding(.trailing, 12)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
//        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .background(
            Image(bgPhoto(weather: weather))
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.top)
        )
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
