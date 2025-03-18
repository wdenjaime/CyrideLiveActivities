//
//  ContentView.swift
//  CyrideLA
//
//  Created by Jaime, Edgar N [ITS] on 3/12/25.
//

import SwiftUI
import RealmSwift
import ActivityKit

struct ContentView: View {
    @State private var activity: Activity<CyrideAttributes>? = nil

    var body: some View {
        VStack (spacing: 20) {
            Text("Cyride")
                .fontWeight(.bold)
            
            Button("Start Activity") {
                startActivity()
            }
            
            Button("Stop Activity") {
               stopActivity()
            }
            
        }
        .padding()
    }
    
    func startActivity(){
         //input data
        
        let state = CyrideAttributes.ContentState(timeReamining: "10 min")
        let attributes = CyrideAttributes(busName: "Blue Route")
        
        if ActivityAuthorizationInfo().areActivitiesEnabled {
            do {
                activity = try Activity<CyrideAttributes>.request(
                    attributes: attributes,
                    content: ActivityContent(state: state, staleDate: nil)
                    // push type
                )
            } catch {
                print("Failed to start activity: \(error)")
            }
        }
        
    }
    
    func stopActivity() {
        //let state = ActivityState
        
//        Task {
//            await activity?.end(ActivityContent(state: nil, staleDate: nil), dismissalPolicy: .immediate)
//
//        }
        
        for activity in Activity<CyrideAttributes>.activities {
            Task {
                await activity.end(
                    using: CyrideAttributes.ContentState(timeReamining: "Goodbye!"),
                    dismissalPolicy: .immediate
                )
            }
        }
        
    }
    
    
    
    
}

