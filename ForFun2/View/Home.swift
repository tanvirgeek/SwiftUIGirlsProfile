//
//  Home.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            NavigationLink(destination: LoginView()){
                Text("Login")
                    .padding(15)
                    .frame(width:UIScreen.main.bounds.width-30)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
                    .cornerRadius(10)
                
            }
            NavigationLink(destination: RegisterView()){
                Text("Register")
                    .padding(15)
                    .frame(width:UIScreen.main.bounds.width-30)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
                    .cornerRadius(10)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
