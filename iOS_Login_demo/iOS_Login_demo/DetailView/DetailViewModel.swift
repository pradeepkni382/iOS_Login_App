//
//  DetailViewModel.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 02/07/23.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var details: User
    
    init(userData: User){
        self.details = userData
    }
}
