//
//  File.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 16/11/21.
//

import Foundation

struct Routine {
    let imageName: String
    let routineTitle: String
    let description: String
    let page: Int
}

let routine1 = Routine.init(imageName: "pet1", routineTitle: "Routine1", description: "Routine bella", page: 1)
let routine2 = Routine.init(imageName: "pet1", routineTitle: "Routine2", description: "Routine carina", page: 2)

