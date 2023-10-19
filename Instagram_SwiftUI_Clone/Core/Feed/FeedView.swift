//
//  FeedView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/19/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
      NavigationStack {
        ScrollView {
          LazyVStack(spacing: 32) {
            ForEach(0...10, id: \.self) { post in
              FeedCell()
            }
          }
          .padding(.top, 8)
        }
        .navigationTitle("피드")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .topBarLeading) {
            Image("instagramLogo")
              .resizable()
              .frame(width: 95, height: 45)
          }
          
          ToolbarItem(placement: .topBarTrailing) {
            Image(systemName: "paperplane")
              .imageScale(.large)
          }
        }
      }
    }
}

#Preview {
    FeedView()
}
