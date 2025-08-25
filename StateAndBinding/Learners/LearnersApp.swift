//
//  LearnersApp.swift
//  Learners
//
//  Created by Luca Palmese on 16/10/23.
//

import SwiftUI

@main
struct LearnersApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            TabView {
                Tab("Learners", systemImage: "person.fill") {
                    LearnerListView()
                }
                
                Tab("Teams", systemImage: "person.3.fill") {
                    TeamListView()
                }
            }
            
        }
        
    }
    
}
