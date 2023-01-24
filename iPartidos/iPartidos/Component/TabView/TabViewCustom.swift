//
//  TabViewCustom.swift
//  iPartidos
//
//  Created by José Guerra on 23-01-23.
//

import SwiftUI


struct TabViewCustom: View {
    
    @Binding var tabSelected: Tabs
    
    var body: some View {
        
        HStack(spacing: 25) {
            
            Button {
                tabSelected = .home
                
            } label: {
                
                VStack(alignment: .center, spacing: 4) {
                    
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    
                    Text("Home")
                }
            }
            .tint(tabSelected == .home ? Color(Constants.three) :Color(Constants.one))

            
            
            
            
            Button {
                tabSelected = .search
                
            } label: {
                VStack(alignment: .center, spacing: 4) {
                    
                    Image(systemName: "sportscourt.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    
                    Text("Search")
                }
            }
            .tint(tabSelected == .search ? Color(Constants.three) :Color(Constants.one))
         
            
            
            
            
            Button {
                tabSelected = .friends
                
            } label: {
                VStack(alignment: .center, spacing: 4) {
                    
                    Image(systemName: "person.3.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    
                    Text("Friends")
                }
            }
            .tint(tabSelected == .friends ? Color(Constants.three) :Color(Constants.one))
       
            
            
            
            
            Button {
                tabSelected = .news
                
            } label: {
                VStack(alignment: .center, spacing: 4) {
                    
                    Image(systemName: "newspaper.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    
                    Text("News")
                }
            }
            .tint(tabSelected == .news ? Color(Constants.three) :Color(Constants.one))


            
        }
        .frame(maxWidth: 350, maxHeight: 70)
        .background(Color("quaternaryColor"))
        .cornerRadius(50)
        
    }
}



struct TabViewCustom_Previews: PreviewProvider {
    static var previews: some View {
        TabViewCustom(tabSelected: .constant(.home))
    }
}

