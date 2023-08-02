//
//  LogInView.swift
//  Communico
//
//  Created by scholar on 8/2/23.
//

import SwiftUI
struct LogInView: View {
    @State private var enteredUser = ""
    @State private var enteredPass = ""
    @Binding var username : String
    @Binding var password : String
    @Binding var loginOpen : Bool
    var body: some View {
        VStack{
            Text("Sign Up for Communico!")
                .padding(.top)
            
            TextField("Username", text: $enteredUser)
                .textFieldStyle(.roundedBorder)
                .font(.custom("Comfortaa", size : 15))
                .controlSize(.mini)
                .autocapitalization(.none)
                .padding(.top)
            TextField("Password", text: $enteredPass)
                .textFieldStyle(.roundedBorder)
                .font(.custom("Comfortaa", size : 15))
                .controlSize(.mini)
                .autocapitalization(.none)
                .padding(.vertical)
            
            if (username == enteredUser) && (password == enteredPass) {
                Button("Continue") {
                    self.loginOpen = false
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

// nothing is changed under here 
struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView(username : "", password : "", )
    }
}
