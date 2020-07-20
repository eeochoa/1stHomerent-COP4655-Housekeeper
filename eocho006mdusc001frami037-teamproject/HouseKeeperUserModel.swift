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
    
    init(firstName : String, lastName : String, empID : Int, password: String){
        self.firstName = firstName
        self.lastName = lastName
        self.employeeID = empID
        self.password = password
    }
}
