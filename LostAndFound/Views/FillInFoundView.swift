//
//  FillInFoundView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-11.
//

import SwiftUI

struct FillInFoundView: View {
    
    @State var dateAndTimeFound = Date()
    
    @Binding var items: [Item]
    
    @Binding var isAddItemShowing: Bool
    
    @State var newItemTitle = ""
    
    @State var newItemDate = Date.now
    
    @State var newItemNotes = ""
    
    
    
    
    var body: some View {
        
        
        NavigationView {
            
            ScrollView{
                
                
                TextField("Enter a Title",
                          text: $newItemTitle,
                          prompt: Text("Enter a Title"))
                    .padding()
                
                HStack{
                    Text("Date and time the Object was found")
                        .padding(.horizontal)
                    Spacer()
                }
                
                DatePicker("please enter a date",
                           selection: $dateAndTimeFound)
                    .labelsHidden()
                
                
                
                
                
                HStack{
                    Text("Aditional Notes")
                        .padding(.horizontal)
                    Spacer()
                }
                
                TextField("Any aditional notes",
                          text: $newItemNotes,
                          prompt: Text("Type something..."))
                    .padding(.horizontal)
                
                
                
            }
            .navigationTitle("New found item")
            .toolbar{
                ToolbarItem(placement: .confirmationAction) {
                    
                    Button(action: {
                        
                        isAddItemShowing = false
                        
                        let newId = items.count + 1
                        
                        let newItem = Item(id: newId,
                                           title: newItemTitle,
                                           date: dateAndTimeFound,
                                           notes: newItemNotes)
                        
                        items.append(newItem)
                        
                        
                    }, label: {
                        Text("Add")
                    })
                    
                }
            }
        }
        
    }
}


struct FillInFoundView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FillInFoundView(items: .constant(exampleItems),
                            isAddItemShowing: .constant(true))
        }
    }
}
