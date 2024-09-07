
import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var konumLabel: UILabel!
    @IBOutlet weak var isimLabel: UILabel!
    
    var secilenKarakter : BreakingBad?
    override func viewDidLoad() {
        super.viewDidLoad()
        isimLabel.text = secilenKarakter?.isim
        konumLabel.text = secilenKarakter?.konum
        imageView.image = secilenKarakter?.gorsel
    
    }
    
}
