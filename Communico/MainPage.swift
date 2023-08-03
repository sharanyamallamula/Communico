//
//  ContentView.swift
//  MainPageOfficial
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct MainPage: View {
    @State private var sliderValue: Double = .zero
    var body: some View {
        ZStack {
            Image("Background")
            VStack  {
                Text("Active Friends")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding()
                HStack {
                    Image("Person1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
                    Image("Person2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
                    Image("Person3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
                    Image("Person4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 75)
                        .cornerRadius(30)
                    Spacer()
                }.padding()//closing hstack
                HStack {
                    Text("Last watched...")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                    Button("➕") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                } // closing 2nd hstack
                VStack(spacing: 30.0) {
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
                    .padding()
                    .background(Rectangle().foregroundColor(Color.red))
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
                    .padding()
                    .background(Rectangle().foregroundColor(Color.red))
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
                    .padding()
                    .background(Rectangle().foregroundColor(Color.red))
                } //vstack closing for buttons
                
                    .navigationTitle("Communico")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                    .toolbar{
                        ToolbarItemGroup(placement: .status){
                            NavigationLink(destination: SecondView()) {
                                Text("About")
                            }
                        }//tool bar item group
                    }//toolbar
                    
            } //closing vstack
            .padding()
            }//closing zstack
            .padding()
                
            }//closing bracket
    }//closing bracket
// nothing edited under here
    struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
        }
    }
