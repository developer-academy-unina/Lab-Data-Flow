//
//  NewLearnerView.swift
//  Learners
//
//  Created by Luca Palmese on 24/09/2024.
//

import SwiftUI

struct NewLearnerView: View {
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var description: String = ""
    @State var favouriteColor: Color = .accentColor
    
    var add: (_ learner: Learner) -> Void
    
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
                    TextField("Learner's Description", text: $description)
                }
                Section("Favourite Color") {
                    ColorPicker("Select a color", selection: $favouriteColor)
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
                        add(newLearner)
                        showModal.toggle()
                    }
                }
            }
            .navigationTitle("New Learner")
        }
    }
}

#Preview {
    NewLearnerView(add: { learner in
        
    }, showModal: .constant(true))
}
