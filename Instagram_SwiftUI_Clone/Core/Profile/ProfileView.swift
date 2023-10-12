//
//  ProfileView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/12/23.
//

import SwiftUI

struct ProfileView: View {
  
  private let gridItems: [GridItem] = [
    .init(.flexible(), spacing: 1),
    .init(.flexible(), spacing: 1),
    .init(.flexible(), spacing: 1)
  ]
  
  var body: some View {
    NavigationStack {
      ScrollView {
        
        VStack(spacing: 10) {
          
          HStack {
            Image("duck")
              .resizable()
              .scaledToFill()
              .frame(width: 80, height: 80)
              .clipShape(Circle())
            
            Spacer()
            
            HStack(spacing: 8 ) {
              UserStatView(value: 13, title: "게시물")
              
              UserStatView(value: 54, title: "팔로워")
              
              UserStatView(value: 1, title: "팔로잉")
            }
          }
          .padding(.horizontal)
          
          VStack(alignment: .leading, spacing: 4) {
            Text("오리")
              .font(.footnote)
              .fontWeight(.semibold)
            
            Text("꽥꽥입니다.")
              .font(.footnote)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal)
          
          Button {
            
          } label: {
            Text("프로필 수정")
              .font(.subheadline)
              .fontWeight(.semibold)
              .frame(width: 360, height: 32)
              .foregroundStyle(.black)
              .overlay(RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray, lineWidth: 1)
              )
            
          }
          
          Divider()
          
        }
        
        LazyVGrid(columns: gridItems, spacing: 1) {
          ForEach(0 ... 14, id: \.self) { index in
            Image("duck")
              .resizable()
              .scaledToFill()
          }
        }
      }
      .navigationTitle("프로필")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            
          } label: {
            Image(systemName: "line.3.horizontal")
              .foregroundStyle(Color.black)
          }
        }
      }
    }
  }
}

#Preview {
    ProfileView()
}
