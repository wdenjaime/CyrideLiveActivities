//
//  StopsStruct.swift
//  CyrideLA
//
//  Created by Jaime, Edgar N [ITS] on 3/14/25.
//

import Foundation
import RealmSwift

struct StopsStruct: Codable {
    let id: Int // stop identifier, will be given to arrivals api to return busses that are arriving
    let lat: Double
    let lon: Double
    let name: String // bus stop name
}
