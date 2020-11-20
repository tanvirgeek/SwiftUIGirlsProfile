//
//  UniversityGirlsFormView.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 14/11/20.
//

import SwiftUI

struct UniversityGirlsFormView: View {
    @StateObject var formVM = FormViewModel()
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        VStack{
            Form {
                Section(header: Text("Girls Info"), footer: Text("Girls Info End")) {
                    TextField("Girl's name", text: $formVM.girlName)
                    TextField("Girl's Age", text: $formVM.girlAge)
                    TextField("Girl's Description", text: $formVM.girlDescription)
                    TextField("Girl's Rating", text: $formVM.girlRating)
                }
                Section(header: Text("University Info"), footer: Text("University Info End")) {
                    TextField("University name", text: $formVM.universityName)
                    TextField("University Rating", text: $formVM.universityRating)
                    TextField("University Description", text: $formVM.universityDescrption)
                }
            }
            Spacer()
            Button(action:{}, label:{
                Text("Submit Form")
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
                    .cornerRadius(15)
            }).padding(.bottom, 30)
        }.background(Color(#colorLiteral(red: 0.1556647718, green: 0.2962875068, blue: 0.3227478862, alpha: 1))).ignoresSafeArea(.all,edges: .all)
        
        
    }
}

struct UniversityGirlsFormView_Previews: PreviewProvider {
    static var previews: some View {
        UniversityGirlsFormView()
    }
}
