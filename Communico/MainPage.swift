//
//  ContentView.swift
//  MainPageOfficial
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct MainPage: View {
    @State private var sliderValue: Double = .zero
    @State var showingWatching = false
    var body: some View {
        ZStack {
            
            Image("grad")
            VStack {
                Text("Active Friends")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .font(.title)
                HStack {
                    Image("blankpro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
                    Image("blankpro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
                    Image("blankpro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
//                    Image("blankpro")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 100, height: 75)
//                        .cornerRadius(30)
                    Spacer()
                }//closing hstack
                .padding([.leading, .bottom, .trailing], 50.0)
                HStack {
                    Text("Last watched...")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                    Button("➕") {
                        showingWatching = true
                    }
                    .multilineTextAlignment(.trailing)
                }
      
        if showingWatching {
            CreatingWatching(showingWatching : $showingWatching)}
        VStack() {
            Button(action : {}) {
                VStack {
                    Text("Love Island")
                        .fontWeight(.medium)
                    Text("Season 2 : Episode 40")
                        .font(.footnote)
                    Slider(
                        value: $sliderValue,
                        in: 1...5 )
                } // vstack closing
        
            } // closing button
            
            .tint(Color("darkerCustomColor"))
            .buttonStyle(.borderedProminent)
            .padding(.horizontal, 50)
            Button(action : {}) {
                VStack {
                    Text("Insecure")
                        .fontWeight(.medium)
                    Text("Season 4 : Episode 6")
                        .font(.footnote)
                    Slider(
                        value: $sliderValue,
                        in: 1...5 )
                } // vstack closing
            } // closing button
            .tint(Color("darkerCustomColor"))
            .buttonStyle(.borderedProminent)
            .padding(.horizontal, 50)
            Button(action : {}) {
                VStack {
                    Text("Stranger Things")
                        .fontWeight(.medium)
                    Text("Season 1 : Episode 8")
                        .font(.footnote)
                    Slider(
                        value: $sliderValue,
                        in: 1...5 )
                } // vstack closing
            } // closing button
            .tint(Color("darkerCustomColor"))
            .buttonStyle(.borderedProminent)
            .padding(.horizontal, 50)
        }
        .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing], 45.0/*@END_MENU_TOKEN@*/) // closing v stack
            
            
        } //vstack closing for buttons
            .padding([.leading, .bottom, .trailing], 100.0)
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
            } //tool bar item group
        } //toolbar
            } //closing zstack
} // closing bracket
}//closing bracket
                
//closing bracket
//closing bracket
// nothing edited under here
    struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
        }
    }
