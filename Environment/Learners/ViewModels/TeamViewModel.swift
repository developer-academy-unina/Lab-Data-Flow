//
//  TeamViewModel.swift
//  Learners
//
//  Created by Gianluca Orpello on 18/10/23.
//

import Foundation

class TeamViewModel {
    
    var teams = [
        Team(name: "Red ❤️", imageName: "red", learners: [
            Learner(name: "Jessica", surname: "White", favouriteColor: .orange,  description: "I'm invincible", imageName: "alessia"),
            Learner(name: "Daniel", surname: "Miller", favouriteColor: .green),
            Learner(name: "Emily", surname: "Davis", favouriteColor: .pink),
            Learner(name: "Sophia", surname: "Garcia", favouriteColor: .black),
            Learner(name: "Matthew", surname: "Martinez", favouriteColor: .blue),
            Learner(name: "Joshua", surname: "Hernandez", favouriteColor: .red)
        ]),
        
        Team(name: "Orange 🧡", imageName: "orange", learners: [
            Learner(name: "Michael", surname: "Brown", favouriteColor: .yellow,  description: "I'm strong", imageName: "alessandro"),
            Learner(name: "Andrew", surname: "Lopez", favouriteColor: .orange),
            Learner(name: "Brandon", surname: "Gonzalez", favouriteColor: .yellow),
            Learner(name: "Olivia", surname: "Wilson", favouriteColor: .green),
            Learner(name: "Isabella", surname: "Anderson", favouriteColor: .black),
            Learner(name: "Aiden", surname: "Thomas", favouriteColor: .pink)
        ]),
        
        Team(name: "Pink 💗", imageName: "pink", learners: [
            Learner(name: "James", surname: "Johnson", favouriteColor: .red, description: "I'm strong", imageName: "alessandro"),
            Learner(name: "Victoria", surname: "Robinson", favouriteColor: .black),
            Learner(name: "Mason", surname: "Walker", favouriteColor: .green),
            Learner(name: "Ella", surname: "Young", favouriteColor: .black),
            Learner(name: "Sebastian", surname: "Allen", favouriteColor: .pink),
            Learner(name: "Ryan", surname: "King", favouriteColor: .red)
        ]),
        
        Team(name: "Blu 💙", imageName: "blue", learners: [
            Learner(name: "Jaxon", surname: "Adams", favouriteColor: .pink),
            Learner(name: "Harper", surname: "Nelson", favouriteColor: .pink),
            Learner(name: "Daniel", surname: "Carter", favouriteColor: .red),
            Learner(name: "Samuel", surname: "Moore", favouriteColor: .blue),
            Learner(name: "Henry", surname: "Brown", favouriteColor: .yellow)
        ])
    ]
    
}
