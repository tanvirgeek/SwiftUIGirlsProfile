//
//  RegisterViewModel.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import Foundation
import Firebase

class RegisterViewModel:ObservableObject{
    @Published var passWord = ""
    @Published var confirmPass = ""
    @Published var emailAddress = ""
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var age = ""
    @Published var isGoToProfilePage = false
    
    func registerUser(){
        Auth.auth().createUser(withEmail: emailAddress, password: passWord) { authResult, error in
            if error != nil{
                print(error!)
            }else{
                self.isGoToProfilePage = true
            }
        }
    }
}
