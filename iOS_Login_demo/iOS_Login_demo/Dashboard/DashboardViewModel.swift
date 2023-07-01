//
//  DashboardViewModel.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 02/07/23.
//

import Foundation

class DashboardViewModel: ObservableObject {
    var user_data: UserData?
    init() {
        guard let userdata = readJsonData() else {
            return
        }
        user_data = userdata
    }
    deinit {
        
    }
    
    func readJsonData() -> UserData? {
        var person: UserData? = nil
        guard let fileURL = Bundle.main.url(forResource: "user_data", withExtension: "json") else {
            fatalError("Unable to locate JSON file")
        }
        do {
            let jsonData = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            person = try decoder.decode(UserData.self, from: jsonData)
        } catch {
            print("error decoding JSON: \(error.localizedDescription)")
        }
        return person
    }
}
