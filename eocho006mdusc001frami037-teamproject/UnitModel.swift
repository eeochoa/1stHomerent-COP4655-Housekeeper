//  PROGRAMMER: Ernesto Ochoa

//  PANTHERID: 4690718

//  CLASS: COP 465501

//  INSTRUCTOR: Steve Luis RVC

//  ASSIGNMENT: Team A (Ernesto Ochoa) - Deliverable 2

//  DUE: Saturday 08/01/2020

import UIKit

class UnitModel {
    
    let building: String
    let number : String
    var status : Bool
    var finishByHour : String
    var finishByDate : String
    var finishedAtDate : String?
    var finishedAtTime : String?
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

class DoneUnitsSingleton{
    var doneUnits : [UnitModel]
    static let sharedInstance = DoneUnitsSingleton()
    
    init(){
        doneUnits = [UnitModel]()
    }
    
}
