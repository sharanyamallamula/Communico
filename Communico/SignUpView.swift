//
//  SignUpView.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var username: String = ""
    @State private var password: String = ""
    @Binding var isSignedUp : Bool

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Sign Up", action: saveUser)
                .padding()
        }
        .padding()
    }

    private func saveUser() {
        let newUser = User(context: viewContext)
        newUser.username = username
        newUser.password = password

        do {
            try viewContext.save()
        } catch {
            // Handle the error here
            print("Error saving user: \(error)")
        }
    }
}

//nothing under here is edited 
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(isSignedUp: .constant(true))
    }
}
