//
//  NewLearnerView.swift
//  Learners
//
//  Created by Luca Palmese on 01/08/24.
//

import SwiftUI

struct NewLearnerView: View {
    
    @Environment(LearnerViewModel.self) var learnerVM
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var description: String = ""
    @State var favouriteColor: Color = .black
    
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Name") {
                    TextField("Learner's Name", text: $name)
                }
                Section("Surname") {
                    TextField("Learner's Surname", text: $surname)
                }
                Section("Description") {
                    TextField("Description", text: $description)
                }
                Section("Favorite color") {
                    ColorPicker("Learner's favorite color", selection: $favouriteColor)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        showModal.toggle()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        let newLearner = Learner(name: name, surname: surname, favouriteColor: favouriteColor, description: description)
                        learnerVM.add(newLearner)
                        showModal.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("New Learner")
        }
    }
}

#Preview {
    NewLearnerView(showModal: .constant(true))
        .environment(LearnerViewModel())
}
