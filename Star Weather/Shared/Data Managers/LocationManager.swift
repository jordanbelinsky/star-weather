//
//  LocationManager.swift
//  Star Weather (iOS)
//
//  Created by Jordan Belinsky on 2021-12-25.
//

import Foundation
import CoreLocation

// REFER TO APPLE DOCUMENTATION
// FOR PERSISTENT LOCATION SERVICE DATA

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var request = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        request = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        request = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location", error)
        request = false
    }
}
