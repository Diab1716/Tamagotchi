//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Diab, Ahmed (HWTA) on 19/01/2022.
//

import Foundation

class Tamagotchi {
    var hunger: Int = 5
    
    func eatSnack() {
        if hunger >= 1{
        hunger -= 1
        }
    }
    
    func eatMeal() {
            hunger -= 3
        }
}
