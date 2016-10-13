import Foundation

struct StorageKeys {
  static let storedLat = "storedLat"
  static let storedLong = "storedLong"
}


class DataStore {
  
  func GetDefaults() -> UserDefaults {
  return UserDefaults.standard
  }
  
  func StoredDataPoint (latitude: String, longitude: String) {
  let def = GetDefaults()
    def.set(latitude, forKey: StorageKeys.storedLat)
    def.set(longitude, forKey: StorageKeys.storedLong)
    def.synchronize()
  }
}
