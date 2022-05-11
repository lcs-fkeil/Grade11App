//
//  FoundView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-10.
//

import SwiftUI

struct FoundView: View {
    var body: some View {
        
        
        List{
            
            NavigationLink(destination: FillInFoundView()) {
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
        .navigationTitle("Found items")
        
    }
    
}



struct FoundView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FoundView()
        }
    }
}
