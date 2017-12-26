//
//  PersistenceManager.swift
//  MotoGP Riders
//
//  Created by Dima Yarmolchuk on 12/25/17.
//  Copyright © 2017 Dima Yarmolchuk. All rights reserved.
//

import Foundation
import UIKit

final class PersistenceManager {
    
    private var riders = [Rider]()
    
    init() {
        let rider1  = Rider(name: "Valentino Rossi",
                            team: "Movistar Yamaha MotoGP",
                            bike: "Yamaha",
                            placeOfBirth: "Urbino",
                            dateOfBirth: "16/Feb/1979",
                            weight: "65 kg",
                            height: "182 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Valentino+Rossi.png")
        
        let rider2 = Rider(name: "Johann Zarco",
                           team: "Monster Yamaha Tech 3",
                           bike: "Yamaha",
                           placeOfBirth: "Cannes",
                           dateOfBirth: "16/Jul/1990",
                           weight: "66 kg",
                           height: "171 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Johann+Zarco.png")
        
        let rider3 = Rider(name: "Danilo Petrucci",
                           team: "OCTO Pramac Racing",
                           bike: "Ducati",
                           placeOfBirth: "Terni",
                           dateOfBirth: "24/Oct/1990",
                           weight: "77 kg",
                           height: "180 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Danilo+Petrucci.png")

        let rider4 = Rider(name: "Xavier Simeon",
                           team: "Reale Avintia Racing",
                           bike: "Ducati",
                           placeOfBirth: "Brussels",
                           dateOfBirth: "31/Aug/1989",
                           weight: "67 kg",
                           height: "175 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Xavier+Simeon.png")

        let rider5 = Rider(name: "Thomas Luthi",
                           team: "EG 0,0 Marc VDS",
                           bike: "Honda",
                           placeOfBirth: "Linden",
                           dateOfBirth: "06/Sep/1986",
                           weight: "65 kg",
                           height: "172 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Thomas+Luthi.png")

        let rider6 = Rider(name: "Karel Abraham",
                           team: "Pull&Bear Aspar Team",
                           bike: "Ducati",
                           placeOfBirth: "Brno",
                           dateOfBirth: "02/Jan/1990",
                           weight: "72 kg",
                           height: "181 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Karel+Abraham.png")

        let rider7 = Rider(name: "Alvaro Bautista",
                           team: "Pull&Bear Aspar Team",
                           bike: "Ducati",
                           placeOfBirth: "Talavera de la Reina",
                           dateOfBirth: "21/Nov/1984",
                           weight: "60 kg",
                           height: "169 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Alvaro+Bautista.png")

        let rider8 = Rider(name: "Franco Morbidelli",
                           team: "EG 0,0 Marc VDS",
                           bike: "Honda",
                           placeOfBirth: "Roma",
                           dateOfBirth: "04/Dec/1994",
                           weight: "64 kg",
                           height: "176 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Franco+Morbidelli.png")

        let rider9 = Rider(name: "Maverick Viñales",
                           team: "Movistar Yamaha MotoGP",
                           bike: "Yamaha",
                           placeOfBirth: "Figueres",
                           dateOfBirth: "12/Jan/1995",
                           weight: "64 kg",
                           height: "171 cm",
                           photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Maverick+Vi%C3%B1ales.png")

        let rider10 = Rider(name: "Dani Pedrosa",
                            team: "Repsol Honda Team",
                            bike: "Honda",
                            placeOfBirth: "Sabadell",
                            dateOfBirth: "29/Sep/1985",
                            weight: "51 kg",
                            height: "160 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Dani+Pedrosa.png")
        
        let rider11 = Rider(name: "Andrea Iannone",
                            team: "Team SUZUKI ECSTAR",
                            bike: "Suzuki",
                            placeOfBirth: "Vasto",
                            dateOfBirth: "09/Aug/1989",
                            weight: "67 kg",
                            height: "178 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Andrea+Iannone.png")
        
        let rider12 = Rider(name: "Takaaki Nakagami",
                            team: "LCR Honda IDEMITSU",
                            bike: "Honda",
                            placeOfBirth: "Chiba",
                            dateOfBirth: "09/Feb/1992",
                            weight: "66 kg",
                            height: "174 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Takaaki+Nakagami.png")
        
        let rider13 = Rider(name: "Cal Crutchlow",
                            team: "LCR Honda CASTROL",
                            bike: "Honda",
                            placeOfBirth: "Coventry",
                            dateOfBirth: "29/Oct/1985",
                            weight: "70 kg",
                            height: "170 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Cal+Crutchlow.png")
        
        let rider14 = Rider(name: "Bradley Smith",
                            team: "Red Bull KTM Factory Racing",
                            bike: "KTM",
                            placeOfBirth: "Oxford",
                            dateOfBirth: "28/Nov/1990",
                            weight: "67 kg",
                            height: "179 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Bradley+Smith.png")
        
        let rider15 = Rider(name: "Aleix Espargaro",
                            team: "Aprilia Racing Team Gresini",
                            bike: "Aprilia",
                            placeOfBirth: "Granollers",
                            dateOfBirth: "30/Jul/1989",
                            weight: "71 kg",
                            height: "180 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Aleix+Espargaro.png")
        
        let rider16 = Rider(name: "Alex Rins",
                            team: "Team SUZUKI ECSTAR",
                            bike: "Suzuki",
                            placeOfBirth: "Barcelona",
                            dateOfBirth: "08/Dec/1995",
                            weight: "65 kg",
                            height: "176 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Alex+Rins.png")
        
        let rider17 = Rider(name: "Jack Miller",
                            team: "OCTO Pramac Racing",
                            bike: "Ducati",
                            placeOfBirth: "Townsville",
                            dateOfBirth: "18/Jan/1995",
                            weight: "70 kg",
                            height: "175 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Jack+Miller.png")
        
        let rider18 = Rider(name: "Pol Espargaro",
                            team: "Red Bull KTM Factory Racing",
                            bike: "KTM",
                            placeOfBirth: "Granollers",
                            dateOfBirth: "10/Jun/1991",
                            weight: "64 kg",
                            height: "171 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Pol+Espargaro.png")
        
        let rider19 = Rider(name: "Scott Redding",
                            team: "Aprilia Racing Team Gresini",
                            bike: "Aprilia",
                            placeOfBirth: "Quedgeley",
                            dateOfBirth: "04/Jan/1993",
                            weight: "78 kg",
                            height: "185 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Scott+Redding.png")

        let rider20 = Rider(name: "Andrea Dovizioso",
                            team: "Ducati Team",
                            bike: "Ducati",
                            placeOfBirth: "Forlimpopoli",
                            dateOfBirth: "23/Mar/1986",
                            weight: "67 kg",
                            height: "167 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Andrea+Dovizioso.png")

        let rider21 = Rider(name: "Tito Rabat",
                            team: "Reale Avintia Racing",
                            bike: "Ducati",
                            placeOfBirth: "Barcelona",
                            dateOfBirth: "25/May/1989",
                            weight: "63 kg",
                            height: "178 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Tito+Rabat.png")
        
        let rider22 = Rider(name: "Marc Marquez",
                            team: "Repsol Honda Team",
                            bike: "Honda",
                            placeOfBirth: "Cervera",
                            dateOfBirth: "17/Feb/1993",
                            weight: "59 kg",
                            height: "168 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Marc+Marquez.png")
        
        let rider23 = Rider(name: "Jonas Folger",
                            team: "Monster Yamaha Tech 3",
                            bike: "Yamaha",
                            placeOfBirth: "Mühldorf",
                            dateOfBirth: "13/Aug/1993",
                            weight: "68 kg",
                            height: "177 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Jonas+Folger.png")
        
        let rider24 = Rider(name: "Jorge Lorenzo",
                            team: "Ducati Team",
                            bike: "Ducati",
                            placeOfBirth: "Palma de Mallorca",
                            dateOfBirth: "04/May/1987",
                            weight: "64 kg",
                            height: "173 cm",
                            photoUrl: "https://s3.eu-west-2.amazonaws.com/motogpriders/riders/Jorge+Lorenzo.png")
        
        
        riders = [rider1, rider2, rider3, rider4, rider5, rider6, rider7, rider8, rider9,
                  rider10, rider11, rider12, rider13, rider14, rider15, rider16, rider17,
                  rider18, rider19, rider20, rider21, rider22, rider23, rider24]
    }
    
    func getRiders() -> [Rider] {
        return riders
    }
    
    func addRider(_ rider: Rider, at index: Int) {
        if (riders.count >= index) {
            riders.insert(rider, at: index)
        } else {
            riders.append(rider)
        }
    }
    
    func deleteRider(at index: Int) {
        riders.remove(at: index)
    }
    
    private var cache: URL {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]
    }
    
    func saveImage(_ image: UIImage, filename: String) {
        let url = cache.appendingPathComponent(filename)
        guard let data = UIImagePNGRepresentation(image) else {
            return
        }
        try? data.write(to: url)
    }
    
    func getImage(with filename: String) -> UIImage? {
        let url = cache.appendingPathComponent(filename)
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        return UIImage(data: data)
    }
}
