//
//  SignUpView.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct SignUpView: View {
    @State var username = ""
    @State var password = ""
    @State private var passwordconf = ""
    @Binding var signUpOpen : Bool
    var body: some View {
        VStack{
            Text("Sign Up for Communico!")
                .padding(.top)
            
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .font(.custom("Comfortaa", size : 15))
                .controlSize(.mini)
                .autocapitalization(.none)
                .padding(.top)
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .font(.custom("Comfortaa", size : 15))
                .controlSize(.mini)
                .autocapitalization(.none)
                .padding(.vertical)
            TextField("Confirm Password", text: $passwordconf)
                .textFieldStyle(.roundedBorder)
                .font(.custom("Comfortaa", size : 15))
                .controlSize(.mini)
                .autocapitalization(.none)
                .padding(.bottom)
            if password == passwordconf {
                Button("Join Now!") {
                    self.signUpOpen = false
                } //button closing
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.592156862745098, green: 0.6627450980392157, blue: 0.48627450980392156))
                .font(.title2)
            
            } //ifstatement closing
            Spacer()
        } //vstack closing
        .padding()
    } //closing bracket
} //closing bracket

//nothing under here is edited 
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(username : "", password: "", signUpOpen: .constant(true))
    }
}
