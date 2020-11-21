//
//  LoginView.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginVM = LoginViewModel()
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Form {
                Section(header: Text("Login")) {
                    TextField("Email Address", text: $loginVM.emailAddress)
                    TextField("Password", text: $loginVM.passWord)
                }
            }
            NavigationLink(destination: ProfileView(), isActive: $loginVM.isGoToProfilePage){
                Button(action: {
                    UIApplication.shared.endEditing()
                    loginVM.login()
                }, label: {
                    Text("Login")
                        .padding(15)
                        .frame(width:UIScreen.main.bounds.width-30)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
                        .cornerRadius(10)
                })
            }
            Spacer()
        }.alert(isPresented: $loginVM.showErrorMessage) {
            Alert(title: Text("Hey"), message: Text(loginVM.errorMessage), dismissButton: .destructive(Text("OK")){
                loginVM.errorMessage = ""
            })
                
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
