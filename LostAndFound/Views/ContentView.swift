//
//  ContentView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List{
            
            NavigationLink(destination: FillInView()) {
                Text("+ New")
            }
            
            Section(header: Text("Items")) {
                Text("Airpods - 10/05/2022")
                Text("Necklace - 10/05/2022")
                Text("Laptop charger - 08/05/2022")
                Text("Glasses - 07/05/2022")
                Text("Pencil case - 07/05/2022")
                
            }
        }
        .navigationTitle("Lost items")
        
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
            
        }
    }
}
