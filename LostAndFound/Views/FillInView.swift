//
//  FillInView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2021-11-29.
//

import SwiftUI

struct FillInView: View {
    
    
    @State var dateAndTimeLost = Date()
    
    @Binding var lostItems: [LostItem]
    
    @Binding var isAddLostItemShowing: Bool
    
    @State var newLostItemTitle = ""
    
    @State var newLostItemDate = Date.now
    
    @State var newLostItemNotes = ""
    
    
    
    var body: some View {
        
        NavigationView {
            
            
            ScrollView{
                
                
                TextField("Title",
                          text: $newLostItemTitle,
                          prompt: Text("Enter a Title"))
                    .padding()
                
                
                HStack{
                    Text("Date and time the Object was lost")
                        .padding(.horizontal)
                    Spacer()
                }
                
                DatePicker("please enter a date",
                           selection: $dateAndTimeLost)
                    .labelsHidden()
                
                HStack{
                    Text("Aditional Notes")
                        .padding(.horizontal)
                    Spacer()
                }
                
                
                TextField("Any aditional notes",
                          text: $newLostItemNotes,
                          prompt: Text("Type something..."))
                    .padding(.horizontal)
                
                
                
            }
            .navigationTitle("New lost item")
            .toolbar {
                ToolbarItem(placement:.confirmationAction) {
                    
                    Button(action: {
                        
                        isAddLostItemShowing = false
                        
                        let newId = lostItems.count + 1
                        
                        let newLostItem = LostItem(id: newId, title2: newLostItemTitle, date2: newLostItemDate, notes2: newLostItemNotes)
                        
                        lostItems.append(newLostItem)
                    }, label: {
                        Text("Add")
                    })
                }
                
            }
            
        }
    }
}

struct FillInView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FillInView(lostItems: .constant(exampleLostItems), isAddLostItemShowing: .constant(true))
        }
    }
}
