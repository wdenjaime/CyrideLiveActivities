//
//  cyrideInfoLiveActivity.swift
//  cyrideInfo
//
//  Created by Jaime, Edgar N [ITS] on 3/12/25.
//

import ActivityKit
import WidgetKit
import SwiftUI



struct cyrideInfoLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: CyrideAttributes.self) { context in
            // Lock screen/banner UI
            VStack {
                Text(context.attributes.busName)
                Text(context.state.timeReamining)
            }
            .activityBackgroundTint(.accentColor)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here, appears when you press and hold and dynamic island
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.timeReamining)")
                    // more content
                }
                // compact only appears when
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.timeReamining)")
            } minimal: {
                // only appears when you have something else in the status bar
                Text(context.state.timeReamining)
            }
            .keylineTint(Color.red)
        }
    }
}
