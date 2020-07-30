//
//  HouseKeeperUserModel.swift
//  eocho006mdusc001frami037-teamproject
//
//  Created by Rosybel on 18/07/2020.
//  Copyright © 2020 Ernesto Ochoa. All rights reserved.
//


class HouseKeeperUserModel {
    
    let firstName : String
    let lastName : String
    let employeeID : Int
    var password : String
    var units : [UnitModel] //Units assigned for housekeeper to clean
    
    
    
    init(firstName : String, lastName : String, empID : Int, password: String){
        self.firstName = firstName
        self.lastName = lastName
        self.employeeID = empID
        self.password = password
        self.units = []
    }
}

class HouseKeepers {
    
    var housekeepers : [HouseKeeperUserModel]
    static let sharedInstance = HouseKeepers()
    
    init(){
        housekeepers = [HouseKeeperUserModel]()
        housekeepers.append(HouseKeeperUserModel(firstName: "Jane", lastName: "Doe", empID: 1111, password: "JaneDoe1111"))
        housekeepers[0].units.append(UnitModel(building: "The W", number: "101A", status: false, finishByDate: "08/01/2020", finishByHour: "11:00 AM"))
        housekeepers[0].units.append(UnitModel(building: "The W", number: "202A", status: false, finishByDate: "08/01/2020", finishByHour: "01:00 PM"))
        housekeepers[0].units.append(UnitModel(building: "The W", number: "204B", status: false, finishByDate: "08/01/2020 ", finishByHour: "02:30 PM"))
        housekeepers[0].units.append(UnitModel(building: "The W", number: "301A", status: false, finishByDate: "08/01/2020", finishByHour: "04:00 PM"))
    }
}
