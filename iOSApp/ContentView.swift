//
//  ContentView.swift
//  iOSApp
//
//  Created by softwarica on 2/19/20.
//  Copyright © 2020 softwarica. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var credits = 1000
    @State private var numbers = [0, 0, 0]

    private var symbols = ["apple", "star", "cherry"]
    private var betAmount = 5

    var body: some View {
        ZStack{
            Rectangle()                .foregroundColor(Color(red:200/255,green:143/255,blue:32/255))
                    .edgesIgnoringSafeArea(.all)
            Rectangle()            .foregroundColor(Color(red:228/255,green:195/255,blue:76/255))
                .rotationEffect(Angle(degrees:45))
                .edgesIgnoringSafeArea(.all)
            VStack{

                Spacer()

                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Swift User Interface")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()

                Text("Credits : " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all,10)
                    .background(Color.white.opacity(0.5))
                .cornerRadius(20)
                
                HStack{
                    Spacer()
                    Image(symbols[number[0]]).resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image(symbols[number[0]]).resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    Image(symbols[number[0]]).resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    Spacer()
                }
                Button(action:{
                    self.numbers[0] = Int.random(in:
                    0...self.symbols.count - 1)

                    self.numbers[1] = Int.random(in:
                    0...self.symbols.count - 1)

                    self.number[1] = Int.random(in:
                    0...self.symbols.count - 1)

                    if self.numbers[0] == self.numbers[1] &&
                        self.numbers[1] == self.numbers[2] {
                            self.credits += betAmount * 10
                        }
                    else{
                        self.credits -= self.betAmount
                    }
                }){
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all,10)
                        .padding([.leading, .trailing],30)
                        .background(Color.pink)
                        .cornerRadius(20)
                }

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
