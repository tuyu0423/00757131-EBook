//
//  obj1.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI
import AVFoundation
struct obj1: View {
    let player = AVPlayer()
    var body: some View {
        TabView{
            character_list()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("角色")
                }
                maplist().tabItem {
                    Image(systemName: "map.fill")
                    Text("敵人")
                }
            treasure()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("道具")
                }
        }
        Text("").onAppear{
            let fileUrl = Bundle.main.url(forResource: "music", withExtension: "mp3")!
                            let playerItem = AVPlayerItem(url: fileUrl)
                            self.player.replaceCurrentItem(with: playerItem)
                            self.player.play()
        }
        
    }
}

struct obj1_Previews: PreviewProvider {
    static var previews: some View {
        obj1()
    }
}
