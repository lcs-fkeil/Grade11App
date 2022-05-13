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
    
    @State var lostSearchText = ""
    
    @State var isAddLostItemShowing = false
    
    
    // MARK: Computed properties
    
    var filteredListOfLostItems: [LostItem] {
        
        if lostSearchText.isEmpty{
            return lostItems
        } else {
            return lostItems
                .filter { currentItem in
                    
                    return
                    currentItem.title2
                        .lowercased().contains(lostSearchText.lowercased())
                    
                }
        }
    }
    
    
    var body: some View {
        NavigationView{
            
            List(filteredListOfLostItems) { currentItem in
                
                NavigationLink(destination: {
                    
                    LostDetailView(details2: currentItem)
                    
                }, label: {
                    
                    Text(currentItem.title2)
                    
                })
                
            }
            .searchable(text: $lostSearchText)
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
