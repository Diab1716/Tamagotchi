//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Diab, Ahmed (HWTA) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var myTamagotchi = Tamagotchi()
    var body: some View {
        ZStack{

            VStack{
            if #available(iOS 15.0, *) {
                AsyncImage(url: URL(string: "https://images7.alphacoders.com/667/thumbbig-667925.webp")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 232, height: 144, alignment: .center)
            List{
                VStack(alignment: .leading){
                    Text("Age: \(myTamagotchi.age)")
                    Text("Hunger: \(myTamagotchi.hunger)")
                    Text("Happiness: \(myTamagotchi.happiness)")
                    Text("Cleanliness: \(myTamagotchi.cleanliness)")
            }
                Button("Feed Meal", action: {myTamagotchi.eatMeal()})
                Button("Feed Snack", action: {myTamagotchi.eatSnack()})
                Button("Play", action: {myTamagotchi.playGame()})
                Button("Quick Clean", action: {myTamagotchi.quickClean()})
                Button("Deep Clean", action: {myTamagotchi.deeperScrub()})
                Button("Give Medicine", action: {})

                }
                
                    
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

