//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class UnitsTabViewController : UITabBarController{
    
    @IBOutlet weak var unitStatusTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = false
 
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //Position Tab Bar on top section of the screen
        tabBar.frame = CGRect(x: 0, y: 10, width: tabBar.frame.size.width, height: tabBar.frame.size.height)
    }
}
