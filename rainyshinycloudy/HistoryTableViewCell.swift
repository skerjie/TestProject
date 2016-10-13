import UIKit

class HistoryTableViewCell: UITableViewCell {
  
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  
  
  func CellUpdate(curWeather: CurrentWeather) {
    dateLabel.text = curWeather.date
    locationLabel.text = curWeather.cityName
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}
