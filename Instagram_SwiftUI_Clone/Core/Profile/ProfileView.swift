//
//  ProfileView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/12/23.
//

import SwiftUI

struct ProfileView: View {
  var body: some View {
    VStack {
      
      VStack(spacing: 10) {
        
        HStack {
          Image("duck")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
          
          Spacer()
          
          HStack(spacing: 8 ) {
            VStack {
              Text("13")
                .font(.subheadline)
                .fontWeight(.semibold)
              
              Text("게시물")
                .font(.footnote)
            }
            .frame(width: 76)
            
            
            VStack {
              Text("5.1만")
                .font(.subheadline)
                .fontWeight(.semibold)
              
              Text("팔로워")
                .font(.footnote)
            }
            .frame(width: 76)
            
            VStack {
              Text("1")
                .font(.subheadline)
                .fontWeight(.semibold)
              
              Text("팔로잉")
                .font(.footnote)
            }
            .frame(width: 76)
          }
        }
        .padding(.horizontal)
        .padding(.bottom, 8)
        
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
    }
  }
}

#Preview {
    ProfileView()
}
