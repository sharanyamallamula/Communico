//
//  ContentView.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var signUpOpen = false
    @State private var loginOpen = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to")
                Text("Communico")
                Text("Login or Sign Up now")
                HStack {
                    Button("Sign up") {
                        self.signUpOpen = true
                    } //signup button closing
                    Button("Log In") {
                        self.loginOpen = true
                    } //login button closing
                } //hstack closing
                if signUpOpen {
                    SignUpView()
                        } //if statement closing
                if loginOpen {
                    LogInView()
                } //ifstatement closing
            } //vstack closing
        } //navstack closing
    } //closing bracket
} //closing bracket

//nothing is edited under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
