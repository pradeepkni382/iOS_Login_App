//
//  StorageService.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 12/07/22.
//

import Foundation

struct StorageService: StorageServiceProtocal {
    func fetchDataForKey(key: String) -> String? {
        UserDefaults.standard.string(forKey: key)
    }
    
    func storeDataForKey(key: String, data: String){
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    
}
