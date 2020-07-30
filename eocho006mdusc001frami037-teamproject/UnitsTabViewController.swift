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
        
        /*UIApplication.shared.statusBarFrame.size.height
        unitStatusTabBar.frame = CGRect(x: 0, y:  unitStatusTabBar.frame.size.height, width: unitStatusTabBar.frame.size.width, height: unitStatusTabBar.frame.size.height)*/
 
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //Position Tab Bar on top section of the screen
        tabBar.frame = CGRect(x: 0, y: 10, width: tabBar.frame.size.width, height: tabBar.frame.size.height)
    }
}
