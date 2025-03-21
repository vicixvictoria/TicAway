//
//  Profile_Data.swift
//  TicAway
//
//  Created by Vici Zeillinger on 18.07.23.
//

import Foundation

struct Profil_Data: Identifiable {
    let uuid = UUID()
    let id : String
    let name1: String
    let name2: String
    var bday: Date?
    var gender: String
    
    static let example = Profil_Data(id: "140", name1: "Vici", name2: "Zeillinger", bday: Date(), gender: "female")
}

