//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Belinda Heliot on 10/10/14.
//  Copyright (c) 2014 Belinda Heliot. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff () {
        println("Tiger: Chuff Chuff")
    }
    func chuffANumberOfTimes (numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    func chuffANumberofTimes (numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; ++chuffTimes {
            if isLoud {
                chuff()
            }
            else {
                println("Tiger: purr purr")
            }
        }
    }
    func ageInTigerYearsFromAge (regularAge: Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        switch randomNumber {
        case 0:
            randomFact = "The Tiger is the biggest species in the cat family."
        case 1:
            randomFact = "Tigers can reach a length of 3.3 meters."
        default:
            randomFact = "A group of tigers is known as an ambush or streak."
        }
        return randomFact
    }
}

