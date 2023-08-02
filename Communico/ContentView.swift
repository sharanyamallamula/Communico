//
//  ContentView.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var signUpOpen = false
    @State private var loginOpen = false
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white, CustomColor.testingColor, CustomColor.darkerCustomColor]), startPoint: .top, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Welcome to")
                        .font(.custom("Comfortaa", size: 30))
                    Text("Communico")
                    Text("Login or Sign Up now")
                        .font(.custom("Comfortaa-Bold", size: 20))
                    
                    HStack {
                        Button("Sign up") {
                            self.signUpOpen = true
                        } //signup button closing
                        Button("Log In") {
                            self.loginOpen = true
                        } //login button closing
                    } //hstack closing
                    if signUpOpen {
                        Spacer()
                        SignUpView(username : "", password : "", signUpOpen: $signUpOpen)
                    } //if statement closing
                    if loginOpen {
                        LogInView(username: String, password: String, loginOpen: $loginOpen)
                    } //ifstatement closing
                } //vstack closing
                .padding()
            } //zstack closing
        } //navstack closing
    } //closing bracket
} //closing bracket

struct CustomColor {
    static let testingColor = Color("testingColor")
    static let darkerCustomColor = Color("darkerCustomColor")
}
//nothing is edited under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
