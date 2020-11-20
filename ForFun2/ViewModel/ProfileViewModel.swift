//
//  ProfileViewModel.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//


import Foundation
import Firebase

class ProfileViewModel:ObservableObject{
    func logOut(){
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
}
