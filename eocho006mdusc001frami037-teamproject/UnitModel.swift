//
//  UnitModel.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 18/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//

import UIKit

class UnitModel {
    
    let building: String
    let number : Int
    var status : Bool
    var finishBy : Date
    var finishedAt : Date?
    var comments : String?
    var image : UIImage?
    
    init(building: String, number: Int, status: Bool, finishBy: Date, finishedAt: Date){
        self.building = building
        self.number = number
        self.status = status
        self.finishBy = finishBy
        self.finishedAt = finishedAt
    }
}
