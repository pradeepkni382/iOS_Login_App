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
                            NavigationLink {
                                DetailView(userDetails: user)
                            } label: {
                                VStack(alignment: .leading) {
                                    Text(user.name!)
                                    Text("Favourite Food:- \(user.favoriteFood!)")
                                    Text("EmailID:- \(user.email!)")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("DashboardView")
        }
    }
}
