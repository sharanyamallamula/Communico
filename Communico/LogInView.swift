//
//  LogInView.swift
//  Communico
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct LogInView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: User.entity(), sortDescriptors: []) var users: FetchedResults<User>

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn = false

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [CustomColor.darkOne, CustomColor.mainColor, CustomColor.mainColor, CustomColor.darkOne]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    VStack {
                        Text("Welcome To")
                            .font(.title)
                            .fontWeight(.bold)
                            .shadow(radius: 3)
                            .foregroundColor(Color.white)
                        Image("communico")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                        Text("")
                        
                        Text("Log In Here")
                            .font(.title2)
                            .fontWeight(.ultraLight)
                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        NavigationLink(destination: MainPage()) {
                            Text("Continue")
                                .tint(Color.black)
                        }
                    } //vstack closing
                
                .padding()
            } //zstack closing
            .navigationTitle("Communico")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
                                
                .toolbar{
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: MainPage()) {
                            Text("main")
                                .tint(Color.black)
                        }
                        NavigationLink(destination : profile()) {
                            Text("profile")
                                .tint(Color.black)
                        }
                    }//tool bar item group
                }//toolbar
                
        } //navstack closing
    }

    private func logIn() {
        for user in users {
            if user.username == username && user.password == password {
                isLoggedIn = true
                return
            }
        }
        // Show an alert or error message if login fails
    }
}



// nothing is changed under here 
struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
