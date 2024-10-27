//
//  LearnerListView.swift
//  Learners
//
//  Created by Luca Palmese on 16/10/23.
//

import SwiftUI

struct LearnerListView: View {
    
    @Environment(LearnerViewModel.self) var learnerVM
    @State var showModal: Bool = false
    
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
                .onDelete(perform: learnerVM.delete)
            }
            .sheet(isPresented: $showModal, content: {
                NewLearnerView(showModal: $showModal)
            })
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showModal.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
            .navigationTitle("Learners")
        }
    }
}

#Preview {
    LearnerListView().environment(LearnerViewModel())
}
