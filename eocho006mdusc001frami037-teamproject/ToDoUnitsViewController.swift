//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class customCell : UITableViewCell {
    @IBOutlet weak var unitNumberLabel: UILabel!
    @IBOutlet weak var finishByDateLabel: UILabel!
    @IBOutlet weak var finishByHourLabel: UILabel!
}

class ToDoUnitsViewController : UITableViewController{
    

    
    let housekeeperSharedInstance = HouseKeepers.sharedInstance //Housekeepers Singleton
    var cellHeights = [IndexPath: CGFloat]()
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return housekeeperSharedInstance.housekeepers.count //sections
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int{
        return housekeeperSharedInstance.housekeepers[section].units.count //rows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UIToDoTableViewCell", for: indexPath) as! customCell
        
        let apt = housekeeperSharedInstance.housekeepers[0].units[indexPath.row]
        
            cell.unitNumberLabel.text = apt.number
            cell.finishByDateLabel.text = apt.finishByDate
            cell.finishByHourLabel.text = apt.finishByHour
            
            cell.accessoryType = .disclosureIndicator //adds arrow by end of cell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let unit = housekeeperSharedInstance.housekeepers[0].units[indexPath.row]
        performSegue(withIdentifier: "toDoDetailView", sender: unit)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDoDetailView" {
            // initialize new view controller and cast it as your view controller
            let destViewController = segue.destination as! ToDoUnitsDetailViewController
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
