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
            
            LinearGradient(gradient: Gradient(colors: [CustomColor.darkOne, CustomColor.mainColor, CustomColor.mainColor, CustomColor.darkOne]), startPoint: .top, endPoint: .bottom)
            VStack {
                Text("Active Friends")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .font(.title)
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
                    .multilineTextAlignment(.trailing)
                } // closing 2nd hstack
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
                        .padding()
                    } // closing button
                    .padding()
                    .tint(Color("darkerCustomColor"))
                    .buttonStyle(.borderedProminent)
                    .padding(50)
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
                    .padding(50)
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
                    

                    
                } //vstack closing for buttons
                    
            } //closing vstack
            
            }//closing zstack
                
            }//closing bracket
    }//closing bracket
// nothing edited under here
    struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
        }
    }
