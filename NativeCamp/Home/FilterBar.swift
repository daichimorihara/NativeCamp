//
//  FilterBar.swift
//  NativeCamp
//
//  Created by Daichi Morihara on 2022/12/18.
//

import SwiftUI

struct FilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal.decrease")
            Text("Filter")
        }
        .foregroundColor(.white)
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.black)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 1)
                .foregroundColor(.white)
        )
    }
}

struct FilterBar_Previews: PreviewProvider {
    static var previews: some View {
        FilterBar()
            .preferredColorScheme(.dark)
    }
}
