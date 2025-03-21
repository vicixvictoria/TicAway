//
//  TicLog.swift
//  TicAway
//
//  Created by Vici Zeillinger on 21.06.23.
//

import Foundation

struct TicLog: Identifiable, Codable {
    var id = UUID()
    let patientId : String
    let tic: String
    var date: Date
    let premonitoryUrge: String
    var duration: String
    let awarenesstraining: Bool
    
    static let example = TicLog(patientId: "cde", tic: "head shaking", date: Date(), premonitoryUrge: "feeling", duration: "2 sek", awarenesstraining: true)
    
}

/*let dateFormatter = ISO8601DateFormatter()
let dateString = dateFormatter.string(from: example.date)*/
