import UIKit

class ShareViewController: UIViewController {
  
  @IBOutlet weak var fButton: UIButton!
  @IBOutlet weak var gButton: UIButton!
  @IBOutlet weak var vButton: UIButton!
  @IBOutlet weak var mButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Вся анимация как в QuickReviewViewController
    // Прячем все кнопки за главное View
    fButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    gButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    vButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    mButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
  }
  
  // Отдельно для каждой кнопки  делаем анимацию появления с задержкой от 0..0.2..0.5..0.7
  override func viewDidAppear(_ animated: Bool) {
    UIView.animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.fButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
    
    UIView.animate(withDuration: 0.6, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.gButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
    
    UIView.animate(withDuration: 0.6, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.vButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
    
    UIView.animate(withDuration: 0.6, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.mButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
  }
}
