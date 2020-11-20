//
//  ProfileView.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var profileVM = ProfileViewModel()
    var body: some View {
        VStack{
            Button(action: {
                profileVM.logOut()
            }, label: {
                Text("Logout")
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
