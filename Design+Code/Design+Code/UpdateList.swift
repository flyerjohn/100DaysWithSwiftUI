//
//  UpdateList.swift
//  Design+Code
//
//  Created by João Medeiros on 13/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
        NavigationView {
            List(updateData) { update in
                NavigationLink(destination: UpdateDetail(update: update)) {
                    HStack {
                        Image(update.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .background(Color.black)
                            .cornerRadius(20)
                            .padding(.trailing, 8)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(update.title)
                                .font(.system(size: 20, weight: .bold))
                            
                            Text(update.text)
                                .lineLimit(2)
                                .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            
                            Text(update.date)
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
        .navigationBarTitle(Text("Updates"))
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}

struct Update: Identifiable {
    var id = UUID()
    var image: String
    var text: String
    var date: String
    var title: String
}

let updateData = [
    Update(image: "Card1", text: "Ship your SwiftUI app to the AppStore with advanced technologies, such as Combine Framwork, API calls and more.", date: "JAN 1", title: "SwiftUI Advanced"),
    Update(image: "Card2", text: "Ship your Swift app to the AppStore with advanced technologies, such as Combine Framwork, totaly custom data structures, API calls and more.", date: "APR 18", title: "Swift Advanced"),
    Update(image: "Card3", text: "Ship your ML based app to the AppStore with advanced technologies, such as Combine Framwork, custom Neural Networks model and more.", date: "AUG 9", title: "Advanced ML"),
    Update(image: "Card4", text: "Ship your app to the AppStore with advanced object oriented techniques, such as overload, overcharge, privacy and more.", date: "FEB 12", title: "Object Oriented Programing")
]
