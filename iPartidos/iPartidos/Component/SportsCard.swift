//
//  SportsCard.swift
//  iPartidos
//
//  Created by José Guerra on 23-01-23.
//

import SwiftUI

struct SportsCard: View {
    
    @State var name: String
    @State var image: String
    
    var body: some View {
        
        VStack {
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            Text(name)
                .font(.title)
                .bold()
            
        }
        .frame(width: 170, height: 160)
        .background(Color(Constants.four))
        .cornerRadius(30)
    }
}

struct SportsCard_Previews: PreviewProvider {
    static var previews: some View {
        SportsCard(name: "Soccer", image: "soccerball")
    }
}
