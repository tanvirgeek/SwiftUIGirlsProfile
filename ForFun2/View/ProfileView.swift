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
            Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100, alignment: .top)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(50)
            Text("User's full name")
            Text("User's Age")
            Text("User's Email")
            Button(action: {
                profileVM.logOut()
                self.present.wrappedValue.dismiss()
            }, label: {
                Text("Logout")
            })
            Spacer()
        }.navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
