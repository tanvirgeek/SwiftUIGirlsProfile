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
    @Published var errorMessage = ""
    @Published var showErrorMessage = false
    
    func login(){
        validate()
        if showErrorMessage == false{
            Auth.auth().signIn(withEmail: emailAddress, password: passWord) { [weak self] authResult, error in
              guard let strongSelf = self else { return }
              
                if error != nil {
                    print("ERROR: \(error!)")
                    strongSelf.errorMessage = error!.localizedDescription
                    strongSelf.showErrorMessage = true
                }else{
                    strongSelf.passWord = ""
                    strongSelf.emailAddress = ""
                    strongSelf.isGoToProfilePage = true
                    print("Login successful")
                }
                
            }
        }
        
    }
    func validate(){
        if(emailAddress == "" || passWord == ""){
            errorMessage += "Please dont keep any field empty"
            showErrorMessage = true
        }
    }
}
