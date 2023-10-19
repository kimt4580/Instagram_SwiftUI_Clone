//
//  SearchView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/19/23.
//

import SwiftUI

struct SearchView: View {
  @State var serchText = ""
  
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVStack(spacing: 12) {
          ForEach(0...15, id: \.self) { user in
            HStack {
              Image("duck")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
              
              VStack(alignment: .leading) {
                Text("오리")
                  .fontWeight(.semibold)
                
                Text("김오리")
              }
              .font(.footnote)
              
              Spacer()
            }
            .padding(.horizontal)
          }
        }
        .padding(.top, 8)
        .searchable(text: $serchText, prompt: "검색")
      }
      .navigationTitle("검색")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

#Preview {
  SearchView()
}
