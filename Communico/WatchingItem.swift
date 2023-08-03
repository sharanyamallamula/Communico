//
//  WatchingItem.swift
//  Communico
//
//  Created by scholar on 8/3/23.
//

import SwiftUI

class WatchingItem {
    var title = ""
    var season = 0
    var episode = 0
    
    init(title : String, season : Int, episode : Int) {
        self.title = title
        self.season = season
        self.episode = episode
    }
}
