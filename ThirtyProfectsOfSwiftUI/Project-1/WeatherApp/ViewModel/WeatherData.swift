//
//  WeatherData.swift
//  WeatherAppTutorial
//
//  MARK: codelab21 follow me on Instagram and YouTube
//

import Foundation
import CoreLocation

// Define a struct to hold weather data
struct WeatherData {
    let locationName: String
    let temperature: Double
    let condition: String
}

// Define a struct to represent the weather response
struct WeatherResponse: Codable {
    let name: String
    let main: MainWeather
    let weather: [Weather]
}

// Define a struct to represent the main weather details
struct MainWeather: Codable {
    let temp: Double
}

// Define a struct to represent the weather description
struct Weather: Codable {
    let description: String
}

// Define a class to manage location and update it
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    @Published var location: CLLocation?
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    // Request the user's location
    func requestLocation() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    // Delegate method called when the location is updated
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        self.location = location
        locationManager.stopUpdatingLocation()
    }
    
    // Delegate method called when an error occurs in location updates
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}

