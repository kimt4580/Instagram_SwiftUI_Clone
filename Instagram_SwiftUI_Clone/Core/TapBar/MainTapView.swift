//
//  MainTapView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/12/23.
//

import SwiftUI

struct MainTapView: View {
    var body: some View {
      TabView {
        Text("피드")
          .tabItem {
            Image(systemName: "house")
          }
        
        Text("검색")
          .tabItem {
            Image(systemName: "magnifyingglass")
          }
        
        Text("업로드")
          .tabItem {
            Image(systemName: "plus.square")
          }
        
        Text("알림")
          .tabItem {
            Image(systemName: "heart")
          }
        
        Text("프로필")
          .tabItem {
            Image(systemName: "person")
          }
      }
      .tint(.black)
    }
}

#Preview {
    MainTapView()
}
