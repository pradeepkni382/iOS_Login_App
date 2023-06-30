//
//  LoginView.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 12/07/22.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = LoginViewModel()

    var body: some View {
        ZStack {
            BackgroundView()
            LoginFormCardView(viewModel: viewModel)
            
        }
        .edgesIgnoringSafeArea(.all)
    }

}
struct LoginFormCardView: View {
    @State var viewModel: LoginViewModel
    var body: some View {
        VStack(spacing: 16) {
            Text("LOGIN")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)

            TextField("Email", text: $viewModel.emailId)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Spacer().frame(height: 50)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 25)
        )
        .padding()
        ZStack {
            Button(action: {
                viewModel.authenticateUser()
                print("Button clicked!")
            }) {
                Text("LOGIN")
                    .frame(maxWidth: 200)
                    .frame(height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .offset(y: 115)
                    .shadow(radius: 25)
            }
            .padding()
        }
        .zIndex(4)
    }
}
struct BackgroundView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                VStack {
                    ZStack {
                        LinearGradient(
                            gradient: Gradient(colors: [Color(red: 70/255, green: 128/255, blue: 221/255), Color(red: 85/255, green: 80/255, blue: 188/255)]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        Image(systemName: "house.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .background(Color.white)
                            .clipShape(Circle())
                            .foregroundColor(Color(red: 70/255, green: 128/255, blue: 221/255))
                    }
                    .frame(maxHeight: proxy.size.height/2)
                }
                VStack {
                    
                }
                .background(Color.black)
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

