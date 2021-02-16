import UIKit
import Foundation

class SumController: UIViewController {
    
    @IBOutlet weak var textField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = String(describing: SumSingletonManager.shared.sum!.sum_value)
    }
}
