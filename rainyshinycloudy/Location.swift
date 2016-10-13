import CoreLocation

class Location {
    static var sharedInstance = Location()
    init() {}
    
    var latitude: Double!
    var longitude: Double!
}
