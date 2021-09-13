//
//  AppDataService.swift
//  Trial
//
//  Created by Akin on 11/09/2021.
//

import Foundation


// create  a class that will hold our data
class AppDataService: Identifiable {
    
    
    // create a function that will serve as our source of mock database or API to fetch our values from and populate our UI
    
    func getUsers(completion: @escaping ([User]) -> Void){
        completion([
            User(id: 1, name: "Akin"),
            User(id: 2, name: "IOS"),
            User(id: 3, name: "DEVELOPER")
        ])
    }
}
