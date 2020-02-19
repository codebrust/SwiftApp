//
//  ContentView.swift
//  iOSApp
//
//  Created by softwarica on 2/19/20.
//  Copyright © 2020 softwarica. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()                .foregroundColor(Color(red:200/255,green:143/255,blue:32/255))
                    .edgesIgnoringSafeArea(.all)
            Rectangle()            .foregroundColor(Color(red:228/255,green:195/255,blue:76/255))
                .rotationEffect(Angle(degrees:45))
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Swift User Interface")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Text("Credits : 1000")
                    .foregroundColor(.black)
                    .padding(.all,10)
                    .background(Color.white.opacity(0.5))
                .cornerRadius(20)
                
                HStack{
                    Spacer()
                    Image("apple").resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image("apple").resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    Image("apple").resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    Spacer()
                }
                Button(action:{
                    //TODO
                }){
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all,10)
                        .background(Color.pink)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
