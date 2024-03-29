import UIKit

class RootViewController: UIViewController, UITableViewDataSource {
    // MARK: - Outlets
    @IBOutlet var videoListTableView: UITableView!
    
    // MARK: - Properties
    
    var videos: [Video] = []
    
    // MARK: - StartHere
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createVideosArray()
        createVideoListTable()
    }
    
    // MARK: - Methods
    func createVideosArray() -> [Video]{
        
        var createdArray: [Video] = []
        
        let video1 = Video(title: "Video1 short title", previewImage: UIImage(named: "Video01")!)
        let video2 = Video(title: "Video2 longer title example", previewImage: UIImage(named: "Video02")!)
        let video3 = Video(title: "Video3 very-very long title example with very-very long boring text like lores impsum lupus est", previewImage: UIImage(named: "Video03")!)
        let video4 = Video(title: "Video4 title here", previewImage: UIImage(named: "Video04")!)
        let video5 = Video(title: "Video5 title here", previewImage: UIImage(named: "Video05")!)
        let video6 = Video(title: "Video6 title here", previewImage: UIImage(named: "Video06")!)
        let video7 = Video(title: "Video7 title here", previewImage: UIImage(named: "Video07")!)
        let video8 = Video(title: "Video8 title here", previewImage: UIImage(named: "Video08")!)
        let video9 = Video(title: "Video9 title here", previewImage: UIImage(named: "Video09")!)
        
        createdArray.append(video1)
        createdArray.append(video2)
        createdArray.append(video3)
        createdArray.append(video4)
        createdArray.append(video5)
        createdArray.append(video6)
        createdArray.append(video7)
        createdArray.append(video8)
        createdArray.append(video9)
        
        return createdArray
    }
    
    // MARK: - TableSetup
    func createVideoListTable() {
        videoListTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.videoListTableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        let currentVideo = videos[indexPath.row]
        cell.createCell(for: currentVideo)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailsViewControllerSegue" {
            // Get the new view controller using segue.destination
            let destinationVC = segue.destination as! DetailsViewController
            
            // Pass the selected object to the new view controller.
            if let indexPath = self.videoListTableView.indexPathForSelectedRow{
                let selectedVideo = videos[indexPath.row]
                destinationVC.currentVideo = selectedVideo
            }
        }
    }

}
