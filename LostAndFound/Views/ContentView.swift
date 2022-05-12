//
//  ContentView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    @Binding var lostItems: [LostItem]
    
    @State var isAddLostItemShowing = false
    
    
    
    
    
    var body: some View {
        NavigationView{
        
            List(lostItems) {
                currentItem in
                
                Text(currentItem.title2)
            
            
        }
        .navigationTitle("Lost items")
        .toolbar {
            
            Button(action: {
                
                isAddLostItemShowing = true
            }, label: {
                
                Text("Add new Item")
                
            })
        }
        .sheet(isPresented:
                $isAddLostItemShowing) {
            FillInView(lostItems: $lostItems, isAddLostItemShowing: $isAddLostItemShowing)
        }
        
    }
    }

}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(lostItems: .constant(exampleLostItems))
            
        }
    }
}
