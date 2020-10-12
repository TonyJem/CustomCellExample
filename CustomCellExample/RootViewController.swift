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
        videoListTableView.dataSource = self

    }
    
    // MARK: - Methods
    func createVideosArray() -> [Video]{
        
    }
    
    // MARK: - TableSetup
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
