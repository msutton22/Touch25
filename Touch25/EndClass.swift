//
//  End.swift
//  Touch25
//
//  Created by Maddy Sutton on 12/10/15.
//  Copyright © 2015 Maddy Sutton. All rights reserved.
//

import Foundation

class End {
    var name: String = ""
    var time: Double = 0.0

func getScore() -> String {
    let roundedNumber = Double(round(1000 * time)/1000)
    return "Congratulations \(name)! Your time was \(roundedNumber) seconds."
    
}
}
//Custom Class made to store the time and name properties and to be passed as a class object to each view controller
