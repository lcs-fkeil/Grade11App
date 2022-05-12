//
//  FoundView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-10.
//

import SwiftUI

struct FoundView: View {
    
    // MARK: Stored properties
    
    @Binding var items: [Item]
    
    @State var searchText = ""
    
    @State var isAddItemShowing = false
    
    
    // MARK: Computed properties
    
    var filteredListOfItems: [Item] {
        
        if searchText.isEmpty{
            return items
        } else {
            return items
                .filter { currentItem in
                    
                    return currentItem.title.lowercased().contains(searchText.lowercased())
                    
                }
        }
    }
    
    var body: some View {
        NavigationView{
            
            
            List(filteredListOfItems) { currentItem in
                
                NavigationLink(destination: {
                    
                    DetailView(details: currentItem)
                    
                }, label: {
                    
                    Text(currentItem.title)
                    
                })
                    
            }
            .searchable(text: $searchText)
            .navigationTitle("Found items")
            .toolbar {
                
                Button(action: {
                    
                    // Show the add team view by setting the boolean to true
                    isAddItemShowing = true
                    
                }, label: {
                    
                    Text("Add New Item")
                    
                })
                
                
            }
        
            .sheet(isPresented: $isAddItemShowing) {
                FillInFoundView(items: $items,
                                isAddItemShowing: $isAddItemShowing)
            }
            
            
        }
        
    }
}





struct FoundView_Previews: PreviewProvider {
    static var previews: some View {
        
        FoundView(items: .constant(exampleItems))
        
    }
}
