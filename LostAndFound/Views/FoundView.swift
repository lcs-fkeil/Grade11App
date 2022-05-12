//
//  FoundView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-10.
//

import SwiftUI

struct FoundView: View {
    
    @Binding var items: [Item]
    
    @State var isAddItemShowing = false
    
    
    
    
    var body: some View {
        NavigationView{
            
            
            List(items) { currentItem in
                
                NavigationLink(destination: {
                    
                    DetailView(details: currentItem)
                    
                }, label: {
                    
                Text(currentItem.title)
                
            })
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
}





struct FoundView_Previews: PreviewProvider {
    static var previews: some View {
        
        FoundView(items: .constant(exampleItems))
        
    }
}
