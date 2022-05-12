//
//  LostAndFoundApp.swift
//  LostAndFound
//
//  Created by Franka Keil on 2021-11-29.
//

import SwiftUI

@main
struct LostAndFoundApp: App {
    
    
    @State var items: [Item] = exampleItems
    
    @State var lostItems: [LostItem] = exampleLostItems
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                ContentView(lostItems: $lostItems)
                    .tabItem{
                        Image(systemName: "questionmark.circle.fill")
                        Text("Lost")
                    }
                FoundView(items: $items)
                    .tabItem{
                        Image(systemName: "exclamationmark.circle.fill")
                        Text("Found")
                    }
                
                
            }
        }
        
    }
}
