//
//  DashboardView.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 02/07/23.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel = DashboardViewModel()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    if viewModel.user_data?.users?.count == 0 {
                        Text("nothing to print")
                    } else {
                        ForEach((viewModel.user_data?.users)!, id: \.self) { user in
                            Text(user.name!)
                        }
                    }
                }
            }
            .navigationTitle("DashboardView")
        }
    }
}
