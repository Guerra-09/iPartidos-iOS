//
//  NavigationBar.swift
//  iPartidos
//
//  Created by José Guerra on 23-01-23.
//

import SwiftUI

struct NavigationBar: View {
    
    @State var title: String
    @State var icon: String = ""
    
    var body: some View {
        ZStack {
            Color.clear
                .blur(radius: 20)
                .background(.ultraThinMaterial)
                //.blur(radius: 20)
            
            HStack {
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                if icon != "" {
                    Image(systemName: icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: 35)
                                    .padding(.trailing, 20)
                }
                
            }
            
        }
        .frame(width: 400, height: 90) /// Edit: width: .infitiny
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "Bienvenido", icon: "person.crop.circle")
    }
}
