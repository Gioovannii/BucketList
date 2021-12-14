//
//  Location.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/12/14.
//

import Foundation
import CoreLocation


struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    
    static let dumbLocation = Location(id: UUID(), name: "La tour Eiffel", description: "L'embleme de la France", latitude: 48.858093, longitude: 2.294694)
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
        
    }
    
}
