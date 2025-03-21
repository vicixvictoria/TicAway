//
//  TicSave.swift
//  TicAway
//
//  Created by Vici Zeillinger on 28.02.24.
//

import Foundation
extension UserDefaults {
  func setCodableObject<T: Codable>(_ data: T?, forKey defaultName: String) {
    let encoded = try? JSONEncoder().encode(data)
    set(encoded, forKey: defaultName)
  }
}

/*let key = "foo_key"
let codableObject = CodableObject(value: 100)
UserDefaults.standard.setCodableObject(codableObject, forKey: key)*/
