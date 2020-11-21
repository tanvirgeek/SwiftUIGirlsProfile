//
//  Extensions.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 21/11/20.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
