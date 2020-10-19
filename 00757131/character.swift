//
//  character.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI

struct character: View {
    let person :Person
    var body: some View {
        HStack{
            Image(person.name)
                .resizable()
                .scaledToFill()
                .mask(Circle())
                .frame(width:50,height:50)
                .clipped()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
                .overlay(Circle().stroke(Color(red: 1.0, green: 1.0, blue: 1.0),lineWidth: 4))
            VStack(alignment: .leading){
                Text(person.name)
            }
            Spacer()
        }
    }
}

struct character_Previews: PreviewProvider {
    static var previews: some View {
        character(person: Person(name:"bear",describe: "真的好大")).previewLayout(.sizeThatFits)
    }
}
