//
//  Mosque.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import Foundation
import CoreLocation

struct Mosque: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let coordinate: CLLocationCoordinate2D
}

var sampleMosques: [Mosque ] = [
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    Mosque(name: "Mosque 1", address: "123 Main St", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
    Mosque(name: "Mosque 2", address: "456 Elm St", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
    // Add more mosques with coordinates...
]
