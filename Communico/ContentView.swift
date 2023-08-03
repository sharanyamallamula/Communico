//
//  ContentView.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var showSignUp = false
    var body: some View {
        VStack {
            Text("Welcome To")
            Text("Communico")
            
            Button("Get Started") {
                showSignUp = true
            } //button closing
            
            if showSignUp {
                LogInView()
            }
        } //vstack closing
        
    } //closing bracket
} //closing bracket
//nothing is edited under here
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
