import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet var videoImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    func createCell(for newVideo: Video){
        videoImageView.image = newVideo.previewImage
        titleLabel.text = newVideo.title
    }
}
