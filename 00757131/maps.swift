//
//  maps.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI

struct maps: View {
    let map: Map
    var body: some View {
        HStack{
            Image(map.name)
                .resizable()
                .scaledToFill()
                .frame(width:80,height:80)
                .clipped()
            VStack(alignment: .leading){
                Text(map.name)
            }
            Spacer()
        }
    }
}

struct maps_Previews: PreviewProvider {
    static var previews: some View {
        maps(map:Map(name:"bear", describe:"123"))
    }
}
