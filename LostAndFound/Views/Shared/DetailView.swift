//
//  DetailView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-12.
//

import SwiftUI

struct DetailView: View {
    
    let details: Item
    
    var body: some View {
        NavigationView{
            
            Text(details.title)
                .font(Font.title)
            
            Text("Additional notes:")
            Text(details.notes)
                .font(Font.body)
            
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(details: exampleItems.first!)
    }
}
