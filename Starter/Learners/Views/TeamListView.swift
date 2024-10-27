//
//  TeamListView.swift
//  Learners
//
//  Created by Gianluca Orpello on 18/10/23.
//

import SwiftUI

struct TeamListView: View {
    
    var teamVM = TeamViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                ForEach(teamVM.teams) { team in
                    TeamCardView(team: team)
                        .padding()
                }
            }
            .navigationTitle("Teams")
        }
        
    }
    
}

#Preview {
    TeamListView()
}
