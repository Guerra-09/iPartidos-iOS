//
//  Home.swift
//  iPartidos
//
//  Created by José Guerra on 23-01-23.
//

import SwiftUI

struct Sport: Hashable {
    let id = UUID().uuidString
    let sportName: String
    let sportImage: String
}

class HomeViewModel: ObservableObject {
    
    @Published var sports: [Sport] = []

    
    init() {
        loadSports()
    }
    
    func loadSports() {
        sports.append(contentsOf: [Sport(sportName: "Soccer", sportImage: "soccerball.inverse"), Sport(sportName: "Basketball", sportImage: "basketball.fill"), Sport(sportName: "Tennis", sportImage: "tennis.racket"), Sport(sportName: "Football", sportImage: "football.fill"), Sport(sportName: "Volleyball", sportImage: "volleyball.fill"), Sport(sportName: "Baseball", sportImage: "baseball.fill"), Sport(sportName: "Golf", sportImage: "figure.golf"), Sport(sportName: "Golf", sportImage: "figure.golf"), Sport(sportName: "Golf", sportImage: "figure.golf"), Sport(sportName: "Golf", sportImage: "figure.golf"), Sport(sportName: "Golf", sportImage: "figure.golf"), Sport(sportName: "Golf", sportImage: "figure.golf")])
    }
}

struct Home: View {
    
    @ObservedObject var vm: HomeViewModel = HomeViewModel()
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: -10), count: 2)
    
    var body: some View {
        ScrollView {
            
            Spacer()
                .frame(height: 100)
        
            
            LazyVGrid(columns: columns, spacing: 20) {
 
                ForEach(vm.sports, id: \.self) { sport in
                    SportsCard(name: sport.sportName, image: sport.sportImage)
                }
                
            }

            
        }
        .overlay(
            NavigationBar(title: "Bienvenido", icon: "person.crop.circle")
        )
        .scrollIndicators(.hidden)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
