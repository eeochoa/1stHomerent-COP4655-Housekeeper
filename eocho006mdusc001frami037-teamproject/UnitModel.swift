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
    let number : String
    var status : Bool
    var finishByHour : String
    var finishByDate : String
    var finishedAt : String?
    var comments : String?
    var image : UIImage?
    
    init(building: String, number: String, status: Bool, finishByDate: String, finishByHour: String){
        self.building = building
        self.number = number
        self.status = status
        self.finishByDate = finishByDate
        self.finishByHour = finishByHour
    }
}
