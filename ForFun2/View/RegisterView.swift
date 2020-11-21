//
//  RegisterView.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerVM = RegisterViewModel()
    @State var isSecured = true
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Form {
                Section(header: Text("Register")) {
                    TextField("First Name", text: $registerVM.firstName)
                    TextField("Last Name", text: $registerVM.lastName)
                    TextField("Age", text: $registerVM.age)
                    TextField("Email Address", text: $registerVM.emailAddress)
                    if isSecured{
                        SecureField("Password", text: $registerVM.passWord)
                        SecureField("Confirm Password", text: $registerVM.confirmPass)
                        Button(action: {
                            isSecured = false
                        }, label: {
                            EyeImage(imageName: "eye")
                        }).frame(width: 44, height: 44)
                    }else{
                        TextField("Password", text: $registerVM.passWord)
                        TextField("Confirm Password", text: $registerVM.confirmPass)
                        Button(action: {
                            isSecured = true
                        }, label: {
                            EyeImage(imageName: "eye.slash")
                        }).frame(width: 44, height: 44)
                    }
                    
                    
                    
                    
                }
            }
            
            NavigationLink(destination: ProfileView(), isActive: $registerVM.isGoToProfilePage){
                Button(action: {
                    UIApplication.shared.endEditing()
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
        }.alert(isPresented: $registerVM.isShowError) { () -> Alert in
            Alert(title: Text("Error"), message: Text(registerVM.erroMessage), dismissButton: .destructive(Text("OK")){
                registerVM.erroMessage = ""
            })
        }

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

struct EyeImage:View{
   var imageName:String
    var body: some View{
        Image(systemName: imageName)
            .resizable()
            .frame(width: 25, height: 25, alignment: .trailing)
            .foregroundColor(.black)
    }
}
