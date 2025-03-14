//
//  RoutesStruct.swift
//  CyrideLA
//
//  Created by Jaime, Edgar N [ITS] on 3/14/25.
//

import Foundation
import RealmSwift

// lists all routes

struct RoutesStruct: Codable {
    let color: String // hex value for bus title color
    let id: Int // ID for route, identifies the route
    let name: String // route name
    let shortName: String // route number
    let description: String // same as name
}
