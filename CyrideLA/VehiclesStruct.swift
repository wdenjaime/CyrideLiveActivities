//
//  VehiclesStruct.swift
//  CyrideLA
//
//  Created by Jaime, Edgar N [ITS] on 3/14/25.
//

import Foundation
import RealmSwift

// lists all the busses currently in the route
// bus name and route ID will 

struct VehiclesStruct: Codable {
    let capacity: Int // amount pf passangers that can be on board
    let id: Int // a bus id just for the api
    let lat: Double
    let lon: Double
    let name: String // most liekly the bus identifier, the bus number on the outside
    let passengerLoad: Double // a percentage of the cpacity used
    let lastUpdated: String // time it was last updated(from syncromatics servers and not the bus itself??)
    let heading: String // N,W,S,E
    let speed: Int // bus speed
    let headingDegrees: Double // what degerees the bus is pointing to
    let shapeDistanceTraveled: Double // no clue
}

