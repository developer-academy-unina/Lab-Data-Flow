//
//  Learner.swift
//  Learners
//
//  Created by Luca Palmese on 16/10/23.
//

import Foundation
import SwiftUI

struct Learner: Identifiable {
    
    var id: UUID = UUID()
    
    
    var name: String
    var surname: String
    var favouriteColor: Color = .black
    
    
    var description: String = "No Description"
    var imageName: String = "noimage"
    
    
}
