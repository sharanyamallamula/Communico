//
//  ContentView.swift
//  app-profile
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct PFP: View {
    @State var accppic = "blankpro"
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    //    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    var body: some View {
        
        ZStack {
            Image("grad")
            VStack {
                
                Image(uiImage: selectedImage ?? UIImage(named: "blankpro")!)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 100.0)
                    .padding(/*@START_MENU_TOKEN@*/.horizontal, 175.0/*@END_MENU_TOKEN@*/)
                
                HStack{
                    Button("Take a Picture") {
                        self.sourceType = .camera
                        isImagePickerShowing = true
                    }//button take
                    Button("Select a Photo") {
                        self.sourceType = .photoLibrary
                        isImagePickerShowing = true
                        
                    }//button select
                    
                }//hstack
                .sheet(isPresented: $isImagePickerShowing) {
                    ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
                }//sheet
                
                Text("Username")
                    .font(.title2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .padding(/*@START_MENU_TOKEN@*/.all)
                
                Spacer()
            }//vstack
            
        }//z stack
        }//some view
        
    }//struct
    
    struct PFP_Previews: PreviewProvider {
        static var previews: some View {
            PFP()
        }
    }//struct preview
