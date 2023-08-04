//
// SecondView.swift
// Profliepagenavlink
//
// Created by scholar on 8/3/23.
//
import SwiftUI
struct SecondView: View {
  @State private var edit = ""
  @State private var love = ""
  @Binding var bio : String
    var body: some View {
        ZStack{
        Image("grad")
            VStack {
                Text("Edit Profile")
                    .font(.title)
                    .padding(.bottom)
                Text("Favorites : ")
                    .font(.title3)
                    
                TextField("Type here...", text: $bio)
                    .background(Color.white)
                    .textFieldStyle(.roundedBorder)
                    .padding(50)
                Text("About you :")
                    .font(.title3)
                
                TextField("type here...", text: $bio)
                    .background(Color.white)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .padding(50)
                
                NavigationLink(destination : profile()) {
                    Text("Done")
                }
                
            }
            .padding()
        }//z satck
    }//closing
      struct SecondView_Previews: PreviewProvider {
        static var previews: some View {
          SecondView(bio : .constant(""))
        }
      }
    }





