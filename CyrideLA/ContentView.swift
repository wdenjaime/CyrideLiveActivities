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
        
        let state = CyrideAttributes.ContentState(timeRemaining: "10 min")
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
        Task {
            await activity?.end(
                ActivityContent(
                    state: CyrideAttributes.ContentState(timeRemaining: "Arrived!"),
                    staleDate: nil
                ),
                dismissalPolicy: .immediate
            )
            activity = nil
        }
    }


    
    
    
}

