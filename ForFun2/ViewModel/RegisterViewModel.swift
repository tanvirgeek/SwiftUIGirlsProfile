//
//  RegisterViewModel.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//
import FirebaseFirestore
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
    @Published var isShowError = false
    @Published var erroMessage = ""
    
    func registerUser(){
        validate()
        
        if isShowError == false{
            Auth.auth().createUser(withEmail: emailAddress, password: passWord) { authResult, error in
                if error != nil{
                    self.erroMessage = error!.localizedDescription + " "
                    self.isShowError = true
                    print(error!)
                    
                    //if no error push data to firestore
                }else{
                    let db = Firestore.firestore()
                    
                    db.collection("Users").document(Auth.auth().currentUser!.uid).setData([
                        "firstName": self.firstName,
                        "lastName": self.lastName,
                        "age": self.age,
                        "emailAddress": self.emailAddress
                    ]) { err in
                        if let err = err {
                            self.erroMessage += err.localizedDescription
                            self.isShowError = true
                            print("Error writing document: \(err)")
                        } else {
                            print("Document successfully written!")
                        }
                    }
                    // reset the field values
                    if self.isShowError == false{
                        self.passWord = ""
                        self.confirmPass = ""
                        self.emailAddress = ""
                        self.firstName = ""
                        self.lastName = ""
                        self.age = ""
                        self.isGoToProfilePage = true
                    }
                    
                }
            }
        }
        
        
    }
    func validate(){
        if(passWord != confirmPass){
            erroMessage += "Password does not match. "
            isShowError = true
        }
        if(passWord == "" || confirmPass == "" || emailAddress == "" || firstName == "" || lastName == "" || age == ""){
            erroMessage += "Please fill the full form. "
            isShowError = true
        }
    }
}
