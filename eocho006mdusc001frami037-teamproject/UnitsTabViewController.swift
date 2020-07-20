//
//  UnitsTabViewController.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 18/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//

import UIKit

class UnitsTabViewController : UITabBarController{
    
    @IBOutlet weak var unitStatusTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I've added this line to viewDidLoad
        UIApplication.shared.statusBarFrame.size.height
        unitStatusTabBar.frame = CGRect(x: 0, y:  unitStatusTabBar.frame.size.height, width: unitStatusTabBar.frame.size.width, height: unitStatusTabBar.frame.size.height)
    }
}
