//
//  ContentView.swift
//  codeTutorial_appStore
//
//  Created by Christopher Guirguis on 3/26/20.
//  Copyright © 2020 Christopher Guirguis. All rights reserved.
//

import SwiftUI

struct Item:Identifiable {
    var id = UUID()
    var name:String
    var description:String
    var subtitle:String
    var image:String
}

struct ContentView: View {
    
    var items:[Item] = [
        Item(name: "Yosemite", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in.", subtitle: "TRAVEL", image: "1"),
        Item(name: "Astronaut Adventure", description: "At auctor urna nunc id cursus metus aliquam. Id donec ultrices tincidunt arcu non sodales neque sodales ut. Purus ut faucibus pulvinar elementum. Adipiscing elit ut aliquam purus. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Diam ut venenatis tellus in metus vulputate eu scelerisque. Aliquam malesuada bibendum arcu vitae. Non curabitur gravida arcu ac tortor dignissim convallis. Morbi tristique senectus et netus et malesuada. Quisque sagittis purus sit amet volutpat consequat mauris nunc congue. Eu non. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in.", subtitle: "GAMES", image: "2"),
        Item(name: "Minecraft", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in.", subtitle: "MOJANG", image: "3"),
        Item(name: "Bon Appetit", description: "At auctor urna nunc id cursus metus aliquam. Id donec ultrices tincidunt arcu non sodales neque sodales ut. Purus ut faucibus pulvinar elementum. Adipiscing elit ut aliquam purus. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Diam ut venenatis tellus in metus vulputate eu scelerisque. Aliquam malesuada bibendum arcu vitae. Non curabitur gravida arcu ac tortor dignissim convallis. Morbi tristique senectus et netus et malesuada. Quisque sagittis purus sit amet volutpat consequat mauris nunc congue. Eu non Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in.", subtitle: "TEST KITCHEN", image: "4"),
        
        
    ]
    let itemHeight:CGFloat = 500
    let imageHeight:CGFloat = 400
    let SVWidth = UIScreen.main.bounds.width - 40
    
    @State var expandedItem = Item(name: "abc", description: "abcd", subtitle: "", image: "")
    @State var expandedScreen_startPoint = CGRect(x: 0, y: 0, width: 100, height: 100)
    @State var expandedScreen_returnPoint = CGRect(x: 0, y: 0, width: 100, height: 100)
    @State var expandedScreen_shown = false
    @State var expandedScreen_willHide = false
    
    
    var body: some View {
        
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            ScrollView{
                HStack{
                    VStack(alignment: .leading){
                        Text("WEDNESDAY, JANUARY 1")
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(.gray)
                        Text("Today").font(.system(size: 40, weight: .bold, design: .default)).foregroundColor(.black)
                    }
                    Spacer()
                    
                }.padding(.leading).padding(.top).padding(.trailing)
                
                
                //ForEach_start
                
                ForEach(items, id: \.id){thisItem in
                    
                    GeometryReader{geo -> AnyView in
                        return AnyView(
                            
                            ZStack{
                                
                                Image(thisItem.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:self.SVWidth, height: self.itemHeight)
                                    .clipped()
                                    
                                    .background(Color.white)
                                    
                                Button(action: {
                                    
                                    self.expandedItem = thisItem
                                    let x = geo.frame(in: .global).minX
                                    let y = geo.frame(in: .global).minY
                                    let thisRect = CGRect(x: x,
                                                          y: y,                                                                                    width:self.SVWidth,
                                                          height: self.itemHeight)
                                    self.expandedScreen_returnPoint = thisRect
                                    self.expandedScreen_startPoint =  thisRect
                                    
                                    Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { (timer) in
                                        self.expandedScreen_shown = true
                                        self.expandedScreen_startPoint =  CGRect(x: 0,
                                                                                 y: 0,                                                                                    width:UIScreen.main.bounds.size.width,
                                                                                 height: UIScreen.main.bounds.size.height)
                                        
                                        
                                    }
                                    
                                }) {
                                    VStack{
                                        HStack{
                                            
                                            VStack(alignment: .leading){
                                                Text("\(thisItem.subtitle)"
                                                )
                                                    .font(.system(size: 18, weight: .bold, design: .default))
                                                    .foregroundColor(.init(white: 0.8)).opacity(0.6)
                                                Text("\(thisItem.name)")
                                                    .font(.system(size: 36, weight: .bold, design: .default))
                                            }.padding()
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack{
                                            
                                            VStack(alignment: .leading){
                                                Text("\(thisItem.description)")
                                                    .lineLimit(2)
                                                    .font(.system(size: 18, weight: .bold, design: .default))
                                                    .foregroundColor(.init(white: 0.9)).opacity(0.8)
                                                
                                            }.padding()
                                            Spacer()
                                        }
                                    }.frame(width: self.SVWidth)
                                    
                                }
                                
                                
                            }
                            .cornerRadius(15).foregroundColor(.white)
                            .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1)
                                , radius: 11 , x: 0, y: 4)
                        )
                    }.background(Color.clear.opacity(0.4))
                        .frame(height:self.itemHeight)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                }.coordinateSpace(name: "forEach")
                
                //ForEach_End
            }
            GeometryReader{geo -> AnyView in
                let thisItem = self.expandedItem
                
                return AnyView(
                    
                    ZStack{
                        ScrollView{
                            VStack(spacing:0){
                                ZStack{
                                
                                Image(thisItem.image)
                                    .resizable()
                                    .scaledToFill()
                                    .offset(y: self.expandedScreen_shown ? 0 : 0)
                                    .frame(width:
                                        self.expandedScreen_shown ? UIScreen.main.bounds.width : self.SVWidth
                                        
                                        , height:
                                        self.itemHeight
                                )
                                    .clipped()
                                    
                                    .background(Color.white)
                                    .foregroundColor(Color.green)
                                    .edgesIgnoringSafeArea(.top)
                                
                                VStack{
                                    HStack{
                                        
                                        VStack(alignment: .leading){
                                            Text("\(thisItem.subtitle)")
                                                .font(.system(size: 18, weight: .bold, design: .default))
                                                .foregroundColor(.init(red: 0.8 , green: 0.8, blue: 0.8  )).opacity(1.0)
                                            Text("\(thisItem.name)")
                                                .font(.system(size: 36, weight: .bold, design: .default))
                                                .foregroundColor(.white)
                                        }.padding()
                                        Spacer()
                                    }.offset(y:
                                        self.expandedScreen_shown ? 44 : 0)
                                    Spacer()
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text("\(thisItem.description)")
                                                .lineLimit(2)
                                                .font(.system(size: 18, weight: .bold, design: .default))
                                                .foregroundColor(.init(red: 0.9, green: 0.9, blue: 0.9)).opacity(0.8)
                                            
                                        }.padding()
                                        Spacer()
                                    }
                                }.frame(width: self.expandedScreen_startPoint.width)
                            }.frame(height:
                                self.itemHeight
                            ).zIndex(1)
                            Text("\(thisItem.description)").padding().background(Color.white).frame(
                            maxHeight: self.expandedScreen_shown ? .infinity : 0)
                            }
                        }
                        .frame(width: self.expandedScreen_startPoint.width, height: self.expandedScreen_startPoint.height)
                        .background(Color.clear)
                        .cornerRadius(self.expandedScreen_shown ? 0 : 15 )
                        .animation(.easeInOut(duration: 0.3))
                        .offset(x: self.expandedScreen_startPoint.minX, y: self.expandedScreen_startPoint.minY)
                        
                        Button(action: {
                            self.expandedScreen_willHide = true
                            self.expandedScreen_startPoint = self.expandedScreen_returnPoint
                            
                            self.expandedScreen_shown = false
                            Timer.scheduledTimer(withTimeInterval: 0.6, repeats: false) { (timer) in
                                self.expandedScreen_willHide = false
                            }
                        }){
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.init(white: 0.9))
                                .font(.system(size: 25)).padding()
                                .opacity(self.expandedScreen_shown ? 1 : 0.0)
                                .animation(
                                    Animation.easeInOut(duration: 0.3)
                            )
                            
                        }.offset(x: (UIScreen.main.bounds.width/2) - 30, y: (-1 * UIScreen.main.bounds.height/2) + 60)
                    }
                )
            }.edgesIgnoringSafeArea(.top)
                .opacity(self.expandedScreen_shown ? 1 : 0.0)
                .animation(
                    Animation.easeInOut(duration: 0.05)
                        .delay(self.expandedScreen_willHide ? 0.5 : 0)
            )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
