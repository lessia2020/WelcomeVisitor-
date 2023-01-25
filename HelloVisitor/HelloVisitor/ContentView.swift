//
//  ContentView.swift
//  HelloVisitor
//
//  Created by Olesia Nurislamova on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    let bgColor = Color(red: 242/255, green: 231/255, blue: 213/255)
    let vanilaColor = Color(red: 247/255, green: 247/255, blue: 247/255)
    @State var guestName = ""
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            VStack(spacing: 125) {
                TextField("What is your name?", text: $guestName).background(vanilaColor)
                    .font(.largeTitle)
                    .padding(10)
                VStack {
                    Text("Welcome ")
                    Text(guestName)
                }
                .font(.system(size: 32))
                
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
