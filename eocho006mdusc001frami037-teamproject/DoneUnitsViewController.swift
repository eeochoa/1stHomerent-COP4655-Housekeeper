//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class customDoneCell : UITableViewCell{
    @IBOutlet weak var unitNumberLabel: UILabel!
    @IBOutlet weak var finishedAtDateLabel: UILabel!
    @IBOutlet weak var finishedAtHourLabel: UILabel!
}

class DoneUnitsViewController : UITableViewController{
    

    
    let housekeeperSharedInstance = HouseKeepers.sharedInstance //Housekeepers Singleton
    let doneUnitsSharedInstance = DoneUnitsSingleton.sharedInstance
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int{
        return doneUnitsSharedInstance.doneUnits.count //rows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UIDoneTableViewCell", for: indexPath) as! customDoneCell
        
        let apt = doneUnitsSharedInstance.doneUnits[indexPath.row]
        
        cell.unitNumberLabel.text = apt.number
        cell.finishedAtDateLabel.text = apt.finishedAtDate
        cell.finishedAtHourLabel.text = apt.finishedAtTime
        
        cell.accessoryType = .disclosureIndicator //adds arrow by end of cell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let unit = doneUnitsSharedInstance.doneUnits[indexPath.row]
        performSegue(withIdentifier: "doneDetailView", sender: unit)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneDetailView" {
            // initialize new view controller and cast it as your view controller
            let destViewController = segue.destination as! DoneUnitsDetailViewController
            destViewController.unit = sender as? UnitModel
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset.top = 40 //Pads listview from top tab bar
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
}
