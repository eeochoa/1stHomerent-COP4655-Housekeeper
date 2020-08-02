//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class DoneUnitsDetailViewController: UIViewController {
    
    @IBOutlet var unitNumberLabel: UILabel!
    @IBOutlet var finishedAtDateLabel: UILabel!
    @IBOutlet var finishedAtTimeLabel: UILabel!
    @IBOutlet var commentsTextBox: UITextView!
    
    @IBOutlet var viewPhotoLabel: UIButton!
    var unit : UnitModel?
    let housekeeperSharedInstance = HouseKeepers.sharedInstance //Singleton
    let doneUnitsSharedInstance = DoneUnitsSingleton.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
        let backBarButton = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(backButtonTapped(sender:))) as UIBarButtonItem
        
        self.navigationItem.setLeftBarButton(backBarButton, animated: true)
    }
    
    func setUI(){
        unitNumberLabel.text = unit?.number ?? "Error loading unit"
        finishedAtDateLabel.text = unit?.finishedAtDate ?? "Error loading date"
        finishedAtTimeLabel.text = unit?.finishedAtTime ?? "Error loading time"
        commentsTextBox.text = unit?.comments ?? "No incidents reported"
        commentsTextBox.isEditable = false
        viewPhotoLabel.isEnabled = false
    }
    
    func backButtonTapped(sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
}

