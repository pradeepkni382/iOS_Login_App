//
//  StorageServiceProtocal.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 12/07/22.
//

import Foundation
protocol StorageServiceProtocal {
    func fetchDataForKey(key: String) -> String?
    func storeDataForKey(key: String, data: String)
}
