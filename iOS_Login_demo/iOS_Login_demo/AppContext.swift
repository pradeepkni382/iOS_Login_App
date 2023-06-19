//
//  AppContext.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 12/07/22.
//

import Foundation

struct AppContext {
    let storageService: StorageServiceProtocal
    static func makeContext() -> AppContext {
        let storageService = StorageService()
        return AppContext(storageService: storageService)
    }
}
