//
//  TabBarButton.swift
//  iPartidos
//
//  Created by José Guerra on 23-01-23.
//

import SwiftUI

struct TabBarButton: View {
    
    @State var buttonText: String
    @State var imageName: String
    @State var color: String
    
    var body: some View {
        
    
    
        VStack(alignment: .center, spacing: 4) {
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            
            Text(buttonText)
        }
        .foregroundColor(Color(color))
        
        
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(buttonText: "Home", imageName: "house.fill", color: "primaryColor")
    }
}
