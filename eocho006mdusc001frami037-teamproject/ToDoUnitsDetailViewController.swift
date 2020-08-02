//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class ToDoUnitsDetailViewController: UIViewController {
    
    @IBOutlet var finishByDateLabel: UILabel!
    @IBOutlet var finishByTimeLabel: UILabel!
    @IBOutlet var unitNumTextLabel: UILabel!
    
    @IBOutlet var addCommentButton: UIButton!
    @IBOutlet var takePhotoButton: UIButton!
    @IBOutlet var clearCommentButton: UIButton!
    
    @IBOutlet var commentTextBox: UITextView!
    
    @IBOutlet var finishCleaningButtonOutlet: UIButton!
    
    @IBOutlet var editCommentButton: UIButton!
    
    var unit : UnitModel?
    let doneUnitsSharedInstance = DoneUnitsSingleton.sharedInstance
    let housekeeperSharedInstance = HouseKeepers.sharedInstance //Singleton
    
    @IBAction func finishCleaningButton(_ sender: Any) {

        for index in 0..<(housekeeperSharedInstance.housekeepers[0].units.count - 1){
            if (unit?.number == housekeeperSharedInstance.housekeepers[0].units[index].number && unit?.building == housekeeperSharedInstance.housekeepers[0].units[index].building){
               
                //assigns finished time to unit
                housekeeperSharedInstance.housekeepers[0].units[index].finishedAtTime = getCurrentTime()
                
                //assigns finished date to unit
                housekeeperSharedInstance.housekeepers[0].units[index].finishedAtDate = getCurrentDate()
                doneUnitsSharedInstance.doneUnits.append(housekeeperSharedInstance.housekeepers[0].units.remove(at: index))
                finishCleaningButtonOutlet.setTitle("Cleaned!", for: .normal) //change button text
                finishCleaningButtonOutlet.backgroundColor = UIColor.green // change background color
                addCommentButton.isEnabled = false
                clearCommentButton.isEnabled = false
                takePhotoButton.isEnabled = false
                commentTextBox.isEditable = false
                editCommentButton.isEnabled = false
                
                
                
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    
    
    func setUI(){
        self.reloadInputViews()
        unitNumTextLabel.text = unit?.number
        finishByDateLabel.text = unit?.finishByDate
        finishByTimeLabel.text = unit?.finishByHour
        commentTextBox.text = unit?.comments
        takePhotoButton.isEnabled = false
        if(commentTextBox.text.count > 0){
           self.addCommentButton.isHidden = true
           self.editCommentButton.isHidden = false
            self.clearCommentButton.isHidden = true
        }else{
            self.editCommentButton.isHidden = true
        }
    }
    
    @IBAction func clearCommentAction(_ sender: Any) {
        commentTextBox.text = ""
    }
    //iterates housekeeper's units to find instance of the one being cleaned
    @IBAction func submitCommentAction(_ sender: Any) {
        
        if(commentTextBox.text != ""){
           for index in 0..<(housekeeperSharedInstance.housekeepers[0].units.count - 1){
            
                if (unit?.number == housekeeperSharedInstance.housekeepers[0].units[index].number && unit?.building == housekeeperSharedInstance.housekeepers[0].units[index].building){
                    housekeeperSharedInstance.housekeepers[0].units[index].comments = commentTextBox.text
                    unit?.comments = commentTextBox.text
                    commentTextBox.isEditable = false
                    self.addCommentButton.isHidden = true // hides submit button
                    self.editCommentButton.isHidden = false // shows edit button because theres a comment in the textox
                    self.clearCommentButton.isHidden = true
                }
            }
        }
    }
    
    @IBAction func editCommentAction(_ sender: Any) {
        commentTextBox.isEditable = true
        self.editCommentButton.isHidden = true
        self.addCommentButton.isHidden = false
        self.clearCommentButton.isHidden = false
    }
    //function to help display current time
    func getCurrentTime() -> String{
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        
        return ("\(formatter.string(from: Date()))")
    }
    
    //function to help display current time
    func getCurrentDate() -> String{
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return ("\(formatter.string(from: Date()))")
    }
    
}
