//
//  ToDoUnitsViewController.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 29/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//

import UIKit

class ToDoUnitsViewController : UITableViewController{
    
    let houseKeepers = HouseKeepers.sharedInstance //Singleton
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int{
        return houseKeepers.housekeepers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UIToDoTableViewCell", for: indexPath)
        
        let contact = houseKeepers.housekeepers[indexPath.row]
        
        cell.textLabel?.text = "Apt " + houseKeepers.housekeepers[0].units[0].number + "     " + houseKeepers.housekeepers[0].units[0].finishBy! 
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get height of the status bar
        let statBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
}
