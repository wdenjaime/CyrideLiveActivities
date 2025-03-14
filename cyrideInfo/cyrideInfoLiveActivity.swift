//
//  cyrideInfoLiveActivity.swift
//  cyrideInfo
//
//  Created by Jaime, Edgar N [ITS] on 3/12/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct cyrideInfoAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct cyrideInfoLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: cyrideInfoAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension cyrideInfoAttributes {
    fileprivate static var preview: cyrideInfoAttributes {
        cyrideInfoAttributes(name: "World")
    }
}

extension cyrideInfoAttributes.ContentState {
    fileprivate static var smiley: cyrideInfoAttributes.ContentState {
        cyrideInfoAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: cyrideInfoAttributes.ContentState {
         cyrideInfoAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: cyrideInfoAttributes.preview) {
   cyrideInfoLiveActivity()
} contentStates: {
    cyrideInfoAttributes.ContentState.smiley
    cyrideInfoAttributes.ContentState.starEyes
}
