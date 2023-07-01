//
//  UserData.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 02/07/23.
//

import Foundation

// MARK: - UserData
struct UserData: Codable {
    let users: [User]?
}

// MARK: - User
struct User: Codable, Hashable {
    let id: Int?
    let name, email, favoriteFood: String?
    let wishlist: [String]?
}

