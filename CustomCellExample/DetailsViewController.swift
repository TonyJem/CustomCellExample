import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    var currentVideo = Video(title: "String", previewImage: UIImage(named: "Video01")!)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImageView.image = currentVideo.previewImage
        titleLabel.text = currentVideo.title
    }
}
