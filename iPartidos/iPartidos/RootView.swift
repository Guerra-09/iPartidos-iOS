//
//  RootView.swift
//  iPartidos
//
//  Created by José Guerra on 23-01-23.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case search = 1
    case friends = 2
    case news = 3
}

struct RootView: View {
    
    @State var selectedTab: Tabs = .home
    
    init() {
            UITabBar.appearance().isHidden = true
        }
    
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {

                    Home()
                        .tag(Tabs.home)
                    
                    Search()
                        .tag(Tabs.search)
                    
                    Friends()
                        .tag(Tabs.friends)
                    
                    News()
                        .tag(Tabs.news)
                    
                }
                
            }
            
            VStack {
                Spacer()
                
                TabViewCustom(tabSelected: $selectedTab)
            }
        }
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
