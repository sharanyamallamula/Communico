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
    @State private var enter = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to")
                Text("Communico")
                
                Text("Login or Sign Up now")
                TextField("Enter Username", text: $username)
                TextField("Enter Password", text: $password)

                Button("Submit") {
                    enter = true
                }
                
                if enter == true {
                    NavigationLink(destination:SignUpView()) {
                        Text("Get Started")
                    } //navlink closing
                } // if statement closing
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
