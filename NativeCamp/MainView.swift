//
//  MainView.swift
//  NativeCamp
//
//  Created by Daichi Morihara on 2022/12/13.
//

import SwiftUI

struct MainView: View {
    @State private var index = 0
    
    var body: some View {
        TabView(selection: $index) {
            Text("home")
                .tabItem({
                    VStack {
                        Image(systemName: "house")
                        Text("HOME")
                    }
                })
                .tag(0)
            
            Text("Reservation")
                .tabItem {
                    VStack {
                        Image(systemName: "clock")
                        Text("Reservation")
                    }
                }
                .tag(1)
            
            Text("Learning")
                .tabItem {
                    VStack {
                        Image(systemName: "list.star")
                        Text("Learning Management")
                    }
                }
                .tag(2)
            Text("Text")
                .tabItem {
                    VStack {
                        Image(systemName: "book")
                        Text("Textbook")
                    }
                }
                .tag(3)
            
            Text("Menu")
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                        Text("Menu")
                    }
                }
                .tag(4)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
