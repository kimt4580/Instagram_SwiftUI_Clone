//
//  LoginView.swift
//  Instagram_SwiftUI_Clone
//
//  Created by 김태훈 on 10/19/23.
//

import SwiftUI

struct LoginView: View {
  @State var email: String
  @State var password: String
  
    var body: some View {
      NavigationStack {
        VStack {
          Image("instagramLogo")
            .resizable()
            .scaledToFit()
            .frame(width: 220, height: 100)
          
          VStack {
            TextField("이메일", text: $email)
              .textInputAutocapitalization(.none)
              .font(.subheadline)
              .padding(12)
              .background(Color(.systemGray6))
              .clipShape(.rect(cornerRadius: 12))
              .padding(.horizontal, 24)
            
            SecureField("비밀번호", text: $password)
              .textInputAutocapitalization(.none)
              .font(.subheadline)
              .padding(12)
              .background(Color(.systemGray6))
              .clipShape(.rect(cornerRadius: 12))
              .padding(.horizontal, 24)
          }
          
          Button {
            print("Forgot Paswword Button Tapped")
          } label: {
            Text("Forgot Password?")
              .font(.footnote)
              .fontWeight(.semibold)
              .padding(.top)
              .padding(.trailing, 28)
          }
          .frame(maxWidth: .infinity, alignment: .trailing)
          
          Button {
            print("Login Button Tapped")
          } label: {
            Text("로그인")
              .font(.subheadline)
              .fontWeight(.semibold)
              .tint(.white)
              .frame(width: 360, height: 44)
              .background(Color(.systemBlue))
              .clipShape(.rect(cornerRadius: 12))
          }
          .padding(.vertical)
        }
      }
    }
}

#Preview {
  LoginView(email: "abc@abc.com", password: "qwer1234")
}
