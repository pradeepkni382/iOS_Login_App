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
        //        NavigationView {
        VStack(alignment: .leading) {
            Text("Details for \(userDetails.name!) are as below")
            Divider()
            Text("** Favourite food of \(userDetails.name!) is \n \(userDetails.favoriteFood!) \n")
            Text("** You can contact \(userDetails.name!) at \n \(userDetails.email!) \n")
            Text("** \(userDetails.name!)'s wishlist items are as below \n ")
            List {
                ForEach((userDetails.wishlist ?? []), id: \.self) { wishe in
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
