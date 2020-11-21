//
//  ProfileView.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var present:Binding<PresentationMode>
    @StateObject var profileVM = ProfileViewModel()
    var body: some View {
        VStack{
            Button(action: {
                profileVM.logOut()
                self.present.wrappedValue.dismiss()
            }, label: {
                Text("Logout")
            })
        }.navigationBarBackButtonHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
