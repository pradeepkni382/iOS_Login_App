//
//  DetailView.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 02/07/23.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
    
    init(userDetails: User) {
        self.viewModel = DetailViewModel(userData: userDetails)
    }
    
    var body: some View {
        //        NavigationView {
        VStack(alignment: .leading) {
            Text("Details for \(viewModel.details.name!) are as below")
            Divider()
            Text("** Favourite food of \(viewModel.details.name!) is \n\n \(viewModel.details.favoriteFood!) \n")
            Text("** You can contact \(viewModel.details.name!) at \n\n \(viewModel.details.email!) \n")
            Text("** \(viewModel.details.name!)'s wishlist items are as below \n\n ")
            List {
                ForEach((viewModel.details.wishlist ?? []), id: \.self) { wishe in
                    Text(wishe)
                }
                
            }
            .navigationTitle("Detail View")
            .navigationBarTitleDisplayMode(.inline)
            //        }
        }
        .padding(20)
    }
}
