//
//  ContentView.swift
//  Trial
//
//  Created by Akin on 11/09/2021.
//

import SwiftUI

// This serves as the View here. This window/screen's only mission is to show data. There is no logic on tbis page. All work is done behind the scene.

// ctreate a struct here that serves to hold that User struct.

struct UserView: View {
    var user: User

    var body: some View {
        Text(user.name).font(.largeTitle)

    }

}

struct AkinFirstView: View {
    @ObservedObject var makeitRain: MockService
    
    var body: some View {
        NavigationView {
            List (makeitRain.usersArray){  number in
                VStack {
                    UserView(user: number)
                    NavigationLink(
                        destination: Text(number.name)
                            .font(.largeTitle)
                            .bold(),
                        label: {
                            Text("")
                        })
                }
                
                
                
                
            }.onAppear(perform: {
                self.makeitRain.getData()
            })
            .navigationTitle("PROJECT MVVM ")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        AkinFirstView(makeitRain: MockService())
          
       
    }
}
