//
//  Rider.swift
//  MotoGP Riders
//
//  Created by Dima Yarmolchuk on 12/24/17.
//  Copyright © 2017 Dima Yarmolchuk. All rights reserved.
//

import Foundation

typealias RiderData = (title: String, value: String)

struct Rider {
    let name : String
    let team : String
    let bike : String
    let placeOfBirth : String
    let dateOfBirth : String
    let weight : String
    let height : String
    let photoUrl : String
}

extension Rider: CustomStringConvertible {
    var description: String {
        return "Name: \(name)" + "Team: \(team)" + "Bike: \(bike)" +
                " Place of birth: \(placeOfBirth)" + " Date of birth: \(dateOfBirth)" +
                " Weight: \(weight)" + " Height: \(height)" + " Photo: \(photoUrl)"
    }
}

extension Rider {
    var tableRepresentation: [RiderData] {
        return [
            ("Name", name),
            ("Team", team),
            ("Bike", bike),
            ("Place of birth", placeOfBirth),
            ("Date of birth", dateOfBirth),
            ("Weight", weight),
            ("Height", height)
        ]
    }
}
