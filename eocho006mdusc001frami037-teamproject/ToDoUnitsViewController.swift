//
//  ToDoUnitsViewController.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 29/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//

import UIKit

class customCell : UITableViewCell {
    @IBOutlet weak var unitNumberLabel: UILabel!
    @IBOutlet weak var finishByDateLabel: UILabel!
    @IBOutlet weak var finishByHourLabel: UILabel!
}

class ToDoUnitsViewController : UITableViewController{
    

    
    let housekeeperSharedInstance = HouseKeepers.sharedInstance //Singleton
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.contentInset.top = 40 //Pads listview from top tab bar
    }
}
