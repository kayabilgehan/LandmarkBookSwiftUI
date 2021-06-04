import Foundation
import SwiftUI
import CoreLocation

struct LandmarkModel: Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var country: String
    var category: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}


struct Coordinates {
    var latitude: Double
    var longitude: Double
}


let galataTowerLandmark: LandmarkModel = LandmarkModel(id: 0, name: "Galata Tower", imageName: "galata_tower", country: "Turkey", category: "Tower", coordinates: Coordinates(latitude: 41.0258039172808, longitude: 28.974038259443915)) //41.0258039172808, 28.974038259443915
let eiffelLandmark: LandmarkModel = LandmarkModel(id: 1, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.85904921583484, longitude: 2.294270042264592)) //48.85904921583484, 2.294270042264592
let colosseumLandmark: LandmarkModel = LandmarkModel(id: 2, name: "Colosseum", imageName: "colosseum", country: "Italy", category: "Historical Area", coordinates: Coordinates(latitude: 41.89039385380941, longitude: 12.492316737096079)) //41.89039385380941, 12.492316737096079
let londonBridgeLandmark: LandmarkModel = LandmarkModel(id: 3, name: "London Bridge", imageName: "london_bridge", country: "United Kingdom", category: "Bridge", coordinates: Coordinates(latitude: 51.50566122382825, longitude: -0.07524656648036238)) //51.50566122382825, -0.07524656648036238
let stonehengeLandmark: LandmarkModel = LandmarkModel(id: 4, name: "Stonehenge", imageName: "stonehenge", country: "United Kingdom", category: "Historical Area", coordinates: Coordinates(latitude: 51.17906019425639, longitude: -1.8262686361704996)) //51.17906019425639, -1.8262686361704996


let landmarkArray = [galataTowerLandmark, eiffelLandmark, colosseumLandmark, londonBridgeLandmark, stonehengeLandmark]
