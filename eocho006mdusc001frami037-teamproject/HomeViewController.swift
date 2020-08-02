//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class HomeViewController : UIViewController, UITabBarControllerDelegate{
    
    @IBOutlet var nameTextLabel: UILabel!
    @IBOutlet var numTaskLabel: UILabel!
    @IBOutlet var alertViewSection: UITextView!
    
    let houseKeepers = HouseKeepers.sharedInstance
    
    fileprivate func setUI() {
        nameTextLabel.text = houseKeepers.housekeepers[0].firstName
        print(nameTextLabel.text!)
        numTaskLabel.text = String(houseKeepers.housekeepers[0].units.count) //Show amount of units assigned to the housekeeper
        alertViewSection.text = "Team Members, this is a test alert"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.tabBarController?.delegate = self
        setUI()
        
    }
    
    //Update home's screen values depending on remaining tasks
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let tabBarIndex = tabBarController.selectedIndex
        if tabBarIndex == 0 {
           setUI()
            
        }
    }
    
    
    
}
