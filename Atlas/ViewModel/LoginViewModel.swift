//
//  LoginViewModel.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 30/04/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    @Published var showAlert: Bool = false
    var truckID: String = ""
    
    func isLoginValidated() -> Bool  {
        return !username.isEmpty && !password.isEmpty
    }
    
    func login() {
        let isLoginSuccess = Constants.usersList.contains { a in
            if (a.username.lowercased() == username.lowercased() && a.password.lowercased() == password.lowercased()) {
                truckID = "\(a.userId)"
                return true
            }
            return false
        }
        isLoggedIn = isLoginSuccess
        showAlert.toggle()
    }
}
