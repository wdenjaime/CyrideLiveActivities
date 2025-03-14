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
    public typealias CyrideStatus = ContentState
    
    // what changes within the activity
    public struct ContentState: Codable, Hashable {
        // this would be in seconds then later converted in the view
        var timeRemaining: Int
        // temp var for demo
        var title: String
    }
    
    var busName: String
    
}
