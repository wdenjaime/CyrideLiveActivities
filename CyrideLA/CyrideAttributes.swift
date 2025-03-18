//
//  CyrideAttributes.swift
//  CyrideLA
//
//  Created by Jaime, Edgar N [ITS] on 3/12/25.
//

import Foundation
import ActivityKit
import SwiftUI

struct CyrideAttributes: ActivityAttributes {
    
    // what changes within the activity
    public struct ContentState: Codable, Hashable {
        // data that updates in real time
        var timeRemaining: String
    }
    
    // satic info when live activity is created
    var busName: String
    
}
