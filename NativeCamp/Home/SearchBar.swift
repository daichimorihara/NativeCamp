//
//  SearchBar.swift
//  NativeCamp
//
//  Created by Daichi Morihara on 2022/12/13.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @FocusState var nameIsFocused: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            
            TextField("Find a teacher", text: $searchText)
                .foregroundColor(.secondary)
                .autocorrectionDisabled()
                .focused($nameIsFocused)
        }
        .overlay(
            Image(systemName: "xmark.circle.fill")
                .padding()
                .foregroundColor(.secondary)
                .opacity(searchText.isEmpty ? 0.0 : 1.0)
                .onTapGesture {
                    searchText = ""
                }
            ,alignment: .trailing
            
        )
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
        )
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("ff"))
            .previewLayout(.sizeThatFits)
    }
}
