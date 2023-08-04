
// ContentView.swift
// Profliepagenavlink
//
// Created by scholar on 8/3/23.
//
import SwiftUI
struct profile: View {
    @State var accppic = "blankpro"
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    //    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var sourceType: UIImagePickerController.SourceType = .camera
  @State var bio = ""
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
                .tint(Color.black)
                Text("|")
                    .tint(Color.black)
                Button("Select a Photo") {
                    self.sourceType = .photoLibrary
                    isImagePickerShowing = true
                }//button select
                .tint(Color.black)
                
            }//hstack
            .sheet(isPresented: $isImagePickerShowing) {
                ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
            }//sheet
                Text("")
              Image("like")
                GroupBox(label: Text("@Pastaranya")
                  .font(.title3)
                  .fontWeight(.semibold)) {Text(bio)
                  }
                  .padding(.horizontal, 40.0)
                NavigationLink(destination: SecondView(bio : $bio)) {
                  Text("Edit profile")
                }
            
            Spacer()
                .padding(/*@START_MENU_TOKEN@*/.all)
            
            Spacer()
        }//vstack
        
          }
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
      }
    }
//    .padding()
struct profile_Previews: PreviewProvider {
  static var previews: some View {
    profile()
  }
}
