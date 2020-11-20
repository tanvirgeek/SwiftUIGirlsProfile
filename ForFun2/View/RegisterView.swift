//
//  RegisterView.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerVM = RegisterViewModel()
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Form {
                Section(header: Text("Register")) {
                    TextField("First Name", text: $registerVM.firstName)
                    TextField("Last Name", text: $registerVM.lastName)
                    TextField("Age", text: $registerVM.age)
                    TextField("Email Address", text: $registerVM.emailAddress)
                    TextField("Password", text: $registerVM.passWord)
                    TextField("Confirm Password", text: $registerVM.confirmPass)
                    
                }
            }
            
            NavigationLink(destination: ProfileView(), isActive: $registerVM.isGoToProfilePage){
                Button(action: {
                    registerVM.registerUser()
                }, label: {
                    Text("Register")
                        .padding(15)
                        .frame(width:UIScreen.main.bounds.width-30)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
                        .cornerRadius(10)
                })
            }
            
            Spacer()
        }

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
