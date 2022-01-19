//
//  TamagotchiTest.swift
//  TamagotchiTests
//
//  Created by Diab, Ahmed (HWTA) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {

    
    func testEatSnackHungerDecreasesBy1() throws {
        //arrange (test set-up)
        let tamagotchi = Tamagotchi()
        let expectedHunger = 4
        //act (perform the functionality we want to test)
        tamagotchi.eatSnack()
        //assert (check it did what we expected)
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    
    }
    
    func testWhereTamagotchiHasHunger0EatSnackKeepsHungerAt0() {
        //arrange
        let tamagotchi = Tamagotchi()
        tamagotchi.hunger = 0
        let expectedHunger = 0
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testEatMealHungerDecreasesBy3(){
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = 2
        //act
        tamagotchi.eatMeal()
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testWhereTamagotchiHasHungerTwoEatMealKeepsHungerAt0() {
        //arrange
        let tamagotchi = Tamagotchi()
        tamagotchi.hunger = 2
        let expectedHunger = 0
        //act
        tamagotchi.eatMeal()
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
}
    
}
