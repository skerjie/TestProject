import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController, CLLocationManagerDelegate {
  
  var coreLocationManager = CLLocationManager()
  let myGeocoder : CLGeocoder = CLGeocoder()
  
  
  @IBOutlet weak var myLong: UILabel!
  @IBOutlet weak var myLat: UILabel!
  @IBOutlet weak var mapView: MKMapView!
  @IBOutlet weak var locationInfo: UILabel!
  
  //  override func viewDidLoad() {
  //    super.viewDidLoad()
  //
  //
  //    coreLocationManager.delegate = self
  //    coreLocationManager.requestWhenInUseAuthorization()
  //    coreLocationManager.startUpdatingLocation()
  //
  //    if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
  //      mapView.showsUserLocation = true
  //    } else {
  //      coreLocationManager.requestWhenInUseAuthorization()
  //    }
  //
  //    UserCoordinates()
  //  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    coreLocationManager.delegate = self
    coreLocationManager.requestWhenInUseAuthorization()
  }
  
  func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
      mapView.showsUserLocation = true
      coreLocationManager.startUpdatingLocation()
      
      UserCoordinates()
      
    } else {
      coreLocationManager.requestWhenInUseAuthorization()
    }
  }
  
  //  func UserCoordinates() {
  //
  //    let coord = coreLocationManager.location?.coordinate
  //
  //    if let lat = coord?.latitude {
  //      if let long = coord?.longitude {
  //        DataStore().StoredDataPoint(latitude: String(lat), longitude: String(long))
  //      }
  //    }
  //
  //    let location = CLLocation(latitude: (coord?.latitude)!, longitude: (coord?.longitude)!)
  //    myGeocoder.reverseGeocodeLocation(location) { (placemarks, error) in
  //
  //      if error != nil {
  //        print("Reverse geocoder failed with error" + (error?.localizedDescription)!)
  //        return
  //      }
  //
  //      let locality = placemarks?[0].locality ?? "This place don't know name. It's somewhere"
  //      let country = placemarks?[0].country ?? "Some contry"
  //
  //      let name = placemarks?[0].name ?? "Some region"
  //
  //      self.locationInfo.text = " \(country), \(locality), \(name)"
  //
  //    }
  //
  //    myLat.text = "Latitude: \(coord!.latitude)"
  //    myLong.text = "Longitude: \(coord!.longitude)"
  //
  //  }
  
  func UserCoordinates() {
    
    let coord = coreLocationManager.location?.coordinate
    
    guard let lat = coord?.latitude,
      let long = coord?.longitude else
    {
      return
    }
    
    DataStore().StoredDataPoint(latitude: String(lat), longitude: String(long))
    
    let location = CLLocation(latitude: lat, longitude: long)
    myGeocoder.reverseGeocodeLocation(location) { (placemarks, error) in
      
      if error != nil {
        print("Reverse geocoder failed with error" + (error?.localizedDescription)!)
        return
      }
      
      let locality = placemarks?[0].locality ?? "This place don't have name. It's somewhere"
      let country = placemarks?[0].country ?? "Some contry"
      
      let name = placemarks?[0].name ?? "Some region"
      
      self.locationInfo.text = " \(country), \(locality), \(name)"
      
    }
    
    myLat.text = "Latitude: \(coord!.latitude)"
    myLong.text = "Longitude: \(coord!.longitude)"
    
  }
  
}
