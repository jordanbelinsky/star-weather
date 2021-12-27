//
//  ContentView.swift
//  Shared
//
//  Created by Jordan Belinsky on 2021-12-25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager.getWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch {
                                print("Error fetching weather: \(error)")
                            }
                        }
                }
            } else {
                if locationManager.request {
                    LoadingView()
                } else {
                    SplashScreen()
                        .environmentObject(locationManager)
                }
            }
            
            
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
