//
//  HomeViewController.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 28/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//

import UIKit

class HomeViewController : UIViewController{
    
    @IBOutlet var nameTextLabel: UILabel!
    @IBOutlet var numTaskLabel: UILabel!
    @IBOutlet var alertViewSection: UITextView!
    
    let houseKeepers = HouseKeepers.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextLabel.text = houseKeepers.housekeepers[0].firstName
        print(nameTextLabel.text!)
        numTaskLabel.text = String(houseKeepers.housekeepers[0].units.count) //Show amount of units assigned to the housekeeper
        alertViewSection.text = "-Dear Team Members, this is a test alert"
        
    }
}
