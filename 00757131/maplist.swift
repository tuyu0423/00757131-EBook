//
//  maplist.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI

struct maplist: View {
    var body: some View {
        NavigationView{
            List{
                Section{
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<loot.count){(index)in
                                NavigationLink(destination:story(person: Person(name:loot[index].name,describe: loot[index].describe))){
                                    character(person: Person(name:loot[index].name ,describe: loot[index].describe))
                                }
                            }
                        }
                    }
                }
                Section{
                    ForEach(0..<eneamy.count){(index)in
                        NavigationLink(destination:story(person: Person(name:eneamy[index].name,describe: eneamy[index].describe))){
                            character(person: Person(name:eneamy[index].name ,describe: eneamy[index].describe))
                        }
                    }
                    Link( destination: URL(string: "https://www.youtube.com/watch?v=j0RpyOF07Hw")!){
                        HStack{
                            Image("GG")
                                .resizable()
                                .scaledToFill()
                                .frame(width:80,height:80)
                            Text("GG")
                        }
                    }
                                .font(.largeTitle)
                                .foregroundColor(.pink)
                }
            }.navigationTitle("敵人")
        }
    }
}

struct maplist_Previews: PreviewProvider {
    static var previews: some View {
        maps(map:Map(name:"bear", describe:"123"))
    }
}
