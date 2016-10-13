import UIKit

class HistoryTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var tableView : UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self

  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HistoryTableViewCell {
      let curWeather = CurrentWeather()
      cell.CellUpdate(curWeather: curWeather)
      return cell
    } else {
      return HistoryTableViewCell()
    }
    
    //cell.dateLabel.text = "october 13"
    //cell.locationLabel.text = "Minsk, let: 57, long: 25"
    
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "detailedSegue", sender: "ghj")
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "detailedSegue" {
      
      if let destinationVC = segue.destination as? HistoryDetailedVC {
        let curWeather = CurrentWeather()
        destinationVC.date = curWeather.date
        destinationVC.loc = "\(curWeather.cityName), \(Location.sharedInstance.latitude!), \(Location.sharedInstance.longitude!)"
      }
    }
  }
}
