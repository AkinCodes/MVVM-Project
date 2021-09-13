//
//  TrialApp.swift
//  Trial
//
//  Created by Akin on 11/09/2021.
//

import SwiftUI

@main
struct TrialApp: App {
    
    @StateObject var makeitRain = MockService()
    
    
    var body: some Scene {
        WindowGroup {
            AkinFirstView(makeitRain: makeitRain)
        }
    }
}
