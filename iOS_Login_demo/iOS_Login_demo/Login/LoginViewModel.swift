//
//  LoginViewModel.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 20/06/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var emailId = ""
    @Published var password = ""
    @Published var userLoggedIn = false
    
    init() {
        
    }

    func authenticateUser() {
        if !emailId.isEmpty && !password.isEmpty {
            NSLog("authenticateUser -- \n  emailId \(emailId) \n password \(password)")
            userLoggedIn.toggle()
        } else {
            NSLog("user_id password is null")
        }
    }
    deinit {
        
    }
}
