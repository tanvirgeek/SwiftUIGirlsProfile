//
//  LoginViewModel.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import Foundation
import Firebase

class LoginViewModel:ObservableObject{
    @Published var passWord = ""
    @Published var emailAddress = ""
    @Published var isGoToProfilePage = false
    
    func login(){
        Auth.auth().signIn(withEmail: emailAddress, password: passWord) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
          
            if error != nil {
                print("ERROR: \(error!)")
            }else{
                strongSelf.isGoToProfilePage = true
                print("Login successful")
            }
            
        }
    }
}
