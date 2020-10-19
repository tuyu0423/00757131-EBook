//
//  treasure.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI

struct treasure: View {
    var body: some View {
        NavigationView{
            List{
                Section{
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<role.count){(index)in
                                NavigationLink(destination:story(person: Person(name:role[index].name,describe: role[index].describe))){
                                    character(person: Person(name:role[index].name ,describe: role[index].describe))
                                }
                            }
                        }
                    }
                }
                Section{
                    ForEach(0..<loot.count){(index)in
                        NavigationLink(destination:story(person: Person(name:loot[index].name,describe: loot[index].describe))){
                            character(person: Person(name:loot[index].name ,describe: loot[index].describe))
                        }
                    }
                }
            }.navigationTitle("道具")
        }
    }
}

struct treasure_Previews: PreviewProvider {
    static var previews: some View {
        treasure()
    }
}
