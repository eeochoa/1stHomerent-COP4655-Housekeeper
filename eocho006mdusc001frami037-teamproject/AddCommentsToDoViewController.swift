//
//  AddCommentsToDoViewController.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 30/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//

import UIKit

class AddCommentsToDoViewController: UIViewController{
    
    let housekeeperSharedInstance = HouseKeepers.sharedInstance //Singleton
    
    @IBOutlet var addCommentEditTextBox: UITextView!
    
    //Submit Button
    @IBAction func submitCommentButton(_ sender: Any) {
    
    }
    
    @IBAction func clearCommentButton(_ sender: Any) {
        addCommentEditTextBox.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
