//
//  UserStatView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/12/23.
//

import SwiftUI

struct UserStatView: View {
  let value: Int
  let title: String
  
    var body: some View {
        VStack {
          Text("\(value)")
            .font(.subheadline)
            .fontWeight(.semibold)
          
          Text(title)
            .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStatView(value: 5, title: "게시물")
}
