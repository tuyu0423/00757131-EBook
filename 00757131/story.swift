//
//  story.swift
//  00757131
//
//  Created by User09 on 2020/10/14.
//

import SwiftUI
struct story: View {
    @State private var message = "請新增資訊："
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    let person: Person
    var body: some View {
        ScrollView(.vertical){
                    VStack{
                        Image(person.name)
                            .resizable()
                            .scaledToFill()
                            .frame(width:150,height:150)
                            .offset(x:10,y:80)
                            .animation(.spring(dampingFraction: 0.4))
                        .navigationTitle(person.name)
                        Text(person.describe)
                            .padding()
                            .offset(x: 10, y: 90)
                        TextEditor(text: $message)
                                        .frame(width: 200, height: 150)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                            .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 100)
                    }
                }
            }
    }

struct story_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            story(person: Person(name:"bear",describe: "真的好大"))
        }
    }
}
