//
//  CreatingWatching.swift
//  Communico
//
//  Created by scholar on 8/4/23.
//

import SwiftUI

struct CreatingWatching: View {
    @State var title = ""
    @State var season = ""
    @State var episode = ""
    @Binding var showingWatching : Bool
    var body: some View {
       
            VStack(spacing: 10.0) {
                
                Text("Enter a new show : ")
                TextField("Show Name", text : $title)
                TextField("Season", text : $season)
                TextField("Episode", text : $episode)
                Button("Add to Watching") {
                    showingWatching = false
                }
                
            }
            .padding()
            
        }
    
        private func addWatch(title : String, season : String, episode : String) {
            
        }
    }
    
    struct CreatingWatching_Previews: PreviewProvider {
        static var previews: some View {
            CreatingWatching(showingWatching : .constant(true))
        }
    }

