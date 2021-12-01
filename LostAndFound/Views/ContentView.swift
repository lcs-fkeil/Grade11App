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
            
            Section(header: Text("Categories")) {
                Text("Clothing")
                Text("Sportsequipment")
                Text("Electronics")
                Text("Glasses")
                Text("School materials")
                Text("Jewellery")
            }
        }
        .navigationTitle("Lost & Found")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("New Item") {}
            }
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
            
        }
    }
}
