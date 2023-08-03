//
//  ContentView.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var showSignUp = true
    var body: some View {
            
            if showSignUp {
                LogInView()
            }

    } //closing bracket
} //closing bracket
//nothing is edited under here
struct CustomColor {
    static let mainColor = Color("testingColor")
    static let darkOne = Color("darkerCustomColor")
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
