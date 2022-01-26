//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Diab, Ahmed (HWTA) on 19/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject {
   @Published var happiness: Int = 75
   @Published var hunger: Int = 20
   @Published var cleanliness: Int = 90
   @Published var age : Int = 1
    
    func eatSnack() {
        if hunger >= 1{
        hunger -= 3
        }
    }
    
    func eatMeal() {
        hunger -= 10
        if hunger < 0 {
            hunger = 0
        }
    }
    
    func playGame(){
        happiness += 3
        if happiness >= 10{
            happiness = 10
        }
    }
    
    func quickClean(){
        cleanliness += 3
        if cleanliness > 100{
            cleanliness = 100
        }
    
    }
    func deeperScrub(){
        cleanliness += 25
        if cleanliness > 100{
            cleanliness = 100
        }
    }
}
