//
//  ViewModel.swift
//  Trial
//
//  Created by Akin on 11/09/2021.
//

import Foundation

// This is the View Model page.  This is where the real work is done.
// Create a class that has a property and a function to create and fetch data.

    class MockService: ObservableObject, Identifiable {
         var appdataService = AppDataService()
        
        init(isBool: Bool = false){
            
        }
        
       @Published var usersArray = [User]()
       func getData() {
            appdataService.getUsers { [weak self]  user in
                self?.usersArray = user
            }
            
        }

    }
 
    

