//
//  LoginView.swift
//  iOS_Login_demo
//
//  Created by Pradeep Tiwari on 12/07/22.
//

import SwiftUI

struct LoginView: View {
   
    @State private var emailId = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            BackgroundView()
            LoginFormCardView(emailId: emailId, password: password)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func authenticateUser() {
        // Authenticate user logic here
    }

}
struct LoginFormCardView: View {
    @State var emailId = ""
    @State var password = ""
    var body: some View {
        VStack(spacing: 16) {
            Text("LOGIN")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)

            TextField("Email", text: $emailId)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Spacer().frame(height: 50)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 50)
        )
        .padding()
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

struct LoginView1: View {

    @State private var emailId = ""
    @State private var password = ""

    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    LinearGradient(
                        gradient: Gradient(colors: [Color(red: 70/255, green: 128/255, blue: 221/255), Color(red: 85/255, green: 80/255, blue: 188/255)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(maxHeight: .infinity)

                    ZStack {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .background(Color.white)
                            .clipShape(Circle())
                            .foregroundColor(Color(red: 70/255, green: 128/255, blue: 221/255))
                    }
                }
                .frame(height: proxy.size.height/2 + 40)
                ZStack(alignment: .center) {
                    VStack(spacing: 16) {

                        Text("LOGIN")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)

                        TextField("Email", text: $emailId)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        Spacer().frame(height: 50)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(radius: 10)
                    )
                    .padding()
                }


                    Button(action: {
                        authenticateUser()
                        print("Button clicked!")
                    }) {
                        Text("LOGIN")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    .padding()

            }
        }
        .edgesIgnoringSafeArea(.all)
    }

    func authenticateUser() {
        // Authenticate user logic here
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

