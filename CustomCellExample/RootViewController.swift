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
        
        let video1 = Video(title: "Video1", previewImage: UIImage(named: "Video01")!)
        let video2 = Video(title: "Video2", previewImage: UIImage(named: "Video02")!)
        let video3 = Video(title: "Video3", previewImage: UIImage(named: "Video03")!)
        let video4 = Video(title: "Video4", previewImage: UIImage(named: "Video04")!)
        let video5 = Video(title: "Video5", previewImage: UIImage(named: "Video05")!)
        let video6 = Video(title: "Video6", previewImage: UIImage(named: "Video06")!)
        let video7 = Video(title: "Video7", previewImage: UIImage(named: "Video07")!)
        let video8 = Video(title: "Video8", previewImage: UIImage(named: "Video08")!)
        let video9 = Video(title: "Video9", previewImage: UIImage(named: "Video09")!)
        
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
        
        
        <#code#>
    }

    
    
    
    
    // MARK: - Navigation
    
    
    /*


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     
     ShowDetailsViewControllerSegue
     
    */

}
