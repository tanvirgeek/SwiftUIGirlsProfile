//
//  FormViewModel.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 14/11/20.
//

import Foundation
class FormViewModel:ObservableObject{
    @Published var girlName = ""
    @Published var girlAge = ""
    @Published var girlDescription = ""
    @Published var girlRating = ""
    @Published var girlUniversity = ""
    @Published var universityName = ""
    @Published var universityDescrption = ""
    @Published var universityRating = ""
}
