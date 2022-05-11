//
//  PersonalView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-11.
//

import SwiftUI

struct PersonalView: View {
    var body: some View {
        List{
            
            Text("Airpods - 10/05/2022")
            Text("Necklace - 08/05/2022")
            
        }
        .navigationTitle("My items")
    }
}

struct PersonalView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        PersonalView()
        }
    }
}
