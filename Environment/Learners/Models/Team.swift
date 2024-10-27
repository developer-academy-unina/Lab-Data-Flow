//
//  Team.swift
//  Learners
//
//  Created by Gianluca Orpello on 18/10/23.
//

import Foundation

struct Team: Identifiable {
    
    var id = UUID()
    var name: String
    var imageName: String
    var learners: [Learner]
    
}
