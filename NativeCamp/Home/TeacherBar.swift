//
//  TeacherBar.swift
//  NativeCamp
//
//  Created by Daichi Morihara on 2022/12/18.
//

import SwiftUI

enum TeacherBarViewModel: String, CaseIterable {
    case list = "List"
    case favorites = "Favorites"
    case ranking = "Ranking"
    case recommend = "Recommended Native Teacher"
    
    
}

struct TeacherBar: View {
    @State private var filter: TeacherBarViewModel = .list
    
    @Namespace var animation
    
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(TeacherBarViewModel.allCases, id: \.rawValue) { item in
                
        
                    
                Text(item.rawValue)
                    .font(.caption)
                    .padding(3)
                    .background(
                        ZStack {
                            if filter == item {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                                    .matchedGeometryEffect(id: "filter", in: animation)
                            } else {
                                Capsule()
                                    .foregroundColor(.gray)
                            }
                        }
                    )
                    
                    
                

                    .background(filter == item ? .white : .gray)
                    //.matchedGeometryEffect(id: "filter", in: animation)
                    .onTapGesture {
                        withAnimation {
                            self.filter = item
                        }
                    }
                    



            }
        }
        .frame(width: UIScreen.main.bounds.width)
//        HStack(spacing: 0) {
//            Text("List")
//                .padding(5)
//
//            Text("Favorites")
//                .padding(5)
//
//            Text("Ranking")
//                .padding(5)
//
//            Text("Recommended Native Teacher")
//                .padding(5)
//
//        }
//        .font(.caption)
//        .frame(width: .infinity)
    }
}

struct TeacherBar_Previews: PreviewProvider {
    static var previews: some View {
        TeacherBar()
    }
}
