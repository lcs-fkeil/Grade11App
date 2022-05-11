//
//  LostAndFoundApp.swift
//  LostAndFound
//
//  Created by Franka Keil on 2021-11-29.
//

import SwiftUI

@main
struct LostAndFoundApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TabView{
                    
                    ContentView()
                        .tabItem{
                            Image(systemName: "questionmark.circle.fill")
                            Text("Lost")
                        }
                    FoundView()
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
}
