//
//  HomeView.swift
//  NativeCamp
//
//  Created by Daichi Morihara on 2022/12/13.
//

import SwiftUI

struct HomeView: View {
    @State private var text = "GEOH"
    var body: some View {
        VStack {
            ZStack {
                Color.black
                HStack {
                    SearchBar(searchText: $text)

                    FilterBar()
                }
            }
            .ignoresSafeArea()
            
            
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
