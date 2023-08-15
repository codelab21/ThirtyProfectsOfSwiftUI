//
//  WeatherView.swift
//  30Projects
//
//  MARK: codelab21 follow me on Instagram and YouTube

//

import SwiftUI
import CoreLocation

struct WeatherView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var weatherData: WeatherData?
    
    var body: some View {
        VStack {
            // Display weather information if available
            if let weatherData = weatherData {
                Text("\(Int(weatherData.temperature))°C")
                    .font(.custom("", size: 70))
                    .padding()
                
                VStack {
                    Text("\(weatherData.locationName)")
                        .font(.title2).bold()
                    Text("\(weatherData.condition)")
                        .font(.body).bold()
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("CodeLab")
                    .bold()
                    .padding()
                    .foregroundColor(.gray)
            } else {
                // Display a progress view while weather data is being fetched
                ProgressView()
            }
        }
        .frame(width: 300, height: 300)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .onAppear {
            // Request location when the view appears
            locationManager.requestLocation()
        }
        .onReceive(locationManager.$location) { location in
            // Fetch weather data when the location is updated
            guard let location = location else { return }
            fetchWeatherData(for: location)
        }
    }
    
    // Fetch weather data for the given location
    private func fetchWeatherData(for location: CLLocation) {
        let apiKey = "API_KEY GET_YOUR_API_FROM_api.openweathermap.org"
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(location.coordinate.latitude)&lon=\(location.coordinate.longitude)&units=metric&appid=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }
        
        // Make a network request to fetch weather data
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let weatherResponse = try decoder.decode(WeatherResponse.self, from: data)
                
                DispatchQueue.main.async {
                    // Update the weatherData state with fetched data
                    weatherData = WeatherData(locationName: weatherResponse.name, temperature: weatherResponse.main.temp, condition: weatherResponse.weather.first?.description ?? "")
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
