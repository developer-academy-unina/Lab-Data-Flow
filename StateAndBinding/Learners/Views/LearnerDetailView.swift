//
//  LearnerDetailView.swift
//  Learners
//
//  Created by Gianluca Orpello on 17/10/23.
//

import SwiftUI

struct LearnerDetailView: View {
    
    var learner: Learner
    
    var body: some View {
        ZStack {
            learner.favouriteColor
                .opacity(0.3)
                .ignoresSafeArea()
            VStack {
                Image(learner.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                Text("\(learner.name) \(learner.surname)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(learner.favouriteColor)
                Text(learner.description)
            }
            .padding()
        }
    }
}


#Preview {
    LearnerDetailView(
        learner:
            Learner(
                name: "Alex",
                surname: "Doe",
                favouriteColor: .pink,
                description: "I love myself",
                imageName: "adriano"
            )
    )
}
