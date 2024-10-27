//
//  LearnerListView.swift
//  Learners
//
//  Created by Luca Palmese on 16/10/23.
//

import SwiftUI

struct LearnerListView: View {
    
    var learnerVM = LearnerViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(learnerVM.learners) { learner in
                    
                    NavigationLink {
                        LearnerDetailView(learner: learner)
                    } label: {
                        HStack {
                            Image(systemName: "person.fill")
                                .imageScale(.large)
                                .foregroundStyle(learner.favouriteColor)
                            
                            Text(learner.name)
                            Text(learner.surname)
                        }
                    }
                }
            }
            .navigationTitle("Learners")
        }
    }
}

#Preview {
    LearnerListView()
}
