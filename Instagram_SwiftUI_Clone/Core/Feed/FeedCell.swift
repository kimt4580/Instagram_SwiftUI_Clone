//
//  FeedCell.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/19/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
      VStack {
        HStack {
          Image("duck")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
          
          Text("오리")
            .font(.footnote)
            .fontWeight(.semibold)
          
          Spacer()
        }
        .padding(.leading)
        
        Image("duck")
          .resizable()
          .scaledToFill()
          .frame(height: 400)
          .clipShape(Rectangle())
        
        HStack(spacing: 16) {
          Button {
            print("좋아요")
          } label: {
            Image(systemName: "heart")
              .imageScale(.large)
          }
          
          Button {
            print("댓글")
          } label: {
            Image(systemName: "bubble.right")
              .imageScale(.large)
          }
          
          Button {
            print("공유하기")
          } label: {
            Image(systemName: "paperplane")
              .imageScale(.large)
          }
          
          Spacer()
        }
        .padding(.leading, 8)
        .padding(.top, 4)
        .tint(.black)
        
        Text("좋아요 23개")
          .font(.footnote)
          .fontWeight(.semibold)
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.leading, 10)
          .padding(.top, 1)
        
      }
      
      HStack {
        Text("오리 ").fontWeight(.semibold) +
        Text("나는 오리가 아니다 왜냐면 사람인데 오리같이 생긴 것 뿐이기 때문이다.")
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .font(.footnote)
      .padding(.leading, 10)
      .padding(.top, 1)
      
      Text("12시간 전")
        .font(.footnote)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 10)
        .padding(.top, 1)
        .tint(.gray)
      
    }
}

#Preview {
    FeedCell()
}
