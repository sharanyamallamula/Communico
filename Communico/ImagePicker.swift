//
//  ImagePicker.swift
//  app-profile
//
//  Created by scholar on 8/2/23.
//

import SwiftUI
import UIKit
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    @Binding var isImagePickerShowing: Bool
    var sourceType: UIImagePickerController.SourceType
    func makeUIViewController(context: Context) -> some UIViewController {
            
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = self.sourceType
            imagePicker.delegate = context.coordinator
            return imagePicker

        }//make view
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //hello
    }
    //}//updateview
    func makeCoordinator() -> Coordinator {
            return Coordinator(self)
        }
}//struct image picker
class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                    DispatchQueue.main.async {
                        self.parent.selectedImage = image
                    }
                }
        parent.isImagePickerShowing = false
        
    }//image picker conroller
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isImagePickerShowing = false
    }//did cancel
    var parent: ImagePicker
        
        init(_ picker: ImagePicker) {
            self.parent = picker
        }
}//cordinator class
