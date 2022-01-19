//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Diab, Ahmed (HWTA) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.yellow)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                Image("")
                Text("Stats:")
                Button("Feed Meal", action: {})
                Button("Feed Snack", action: {})
                Button("Play", action: {})
                Button("Clean", action: {})
                Button("Give Medicine", action: {})
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

