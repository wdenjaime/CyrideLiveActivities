//
//  ContentView.swift
//  CyrideLA
//
//  Created by Jaime, Edgar N [ITS] on 3/12/25.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Cyride")
                .fontWeight(.bold)
            
            Button("Start Activity") {
                //startActivity()
            }
            
            Button("Stop Activity") {
               //stopActivity()
            }
        }
        .padding()
    }
    
    
    
}

