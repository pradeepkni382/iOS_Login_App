//
//  DetailView.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 02/07/23.
//

import SwiftUI

struct DetailView: View {
    var userDetails: User
    var body: some View {
        VStack(alignment: .center) {
            Text("This is detail view - \(userDetails.name!)")
        }
    }
}
