//
//  character_list.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI

struct character_list: View {
    var body: some View {
        NavigationView{
            List{
                Section{
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<eneamy.count){(index)in
                                NavigationLink(destination:story(person: Person(name:eneamy[index].name,describe: eneamy[index].describe))){
                                    character(person: Person(name:eneamy[index].name ,describe: eneamy[index].describe))
                                }
                            }
                        }
                    }
                }
                Section{
                    ForEach(0..<role.count){(index)in
                        NavigationLink(destination:story(person: Person(name:role[index].name,describe: role[index].describe))){
                            character(person: Person(name:role[index].name ,describe: role[index].describe))
                        }
                    }
                    Link("瑪莉歐的wiki", destination: URL(string: "https://zh.wikipedia.org/wiki/%E7%91%AA%E5%88%A9%E6%AD%90%E7%B3%BB%E5%88%97")!)
                                .font(.largeTitle)
                                .foregroundColor(.pink)
                }
            }.navigationTitle("角色表")
        }.background(Image("sns").scaledToFill())
    }
}

struct character_list_Previews: PreviewProvider {
    static var previews: some View {
        character_list()
    }
}
