import UIKit

class HistoryDetailedVC: UIViewController {

  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var locLabel: UILabel!
  
  var date = ""
  var loc = ""
    override func viewDidLoad() {
        super.viewDidLoad()
      
      dateLabel.text = date
      locLabel.text = loc

    }
}
