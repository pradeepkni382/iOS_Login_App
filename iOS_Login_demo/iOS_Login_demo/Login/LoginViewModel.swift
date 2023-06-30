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
    
    init() {
        
    }

    func authenticateUser() {
        NSLog("authenticateUser -- \n  emailId \(emailId) \n password \(password)")
    }
    deinit {
        
    }
}
