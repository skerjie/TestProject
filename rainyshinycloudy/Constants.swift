import Foundation

//let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
//let LATITUDE = "lat="
//let LONGITUDE = "&lon="
//let APP_ID = "&appid="
//let API_KEY = "21ac747e39b646b92d3a4dfb60f778a3"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=21ac747e39b646b92d3a4dfb60f778a3"
