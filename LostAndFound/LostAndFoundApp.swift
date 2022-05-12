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
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                ContentView()
                    .tabItem{
                        Image(systemName: "questionmark.circle.fill")
                        Text("Lost")
                    }
                FoundView(items: $items)
                    .tabItem{
                        Image(systemName: "exclamationmark.circle.fill")
                        Text("Found")
                    }
                PersonalView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Personal")
                    }
                
            }
        }
        
    }
}
