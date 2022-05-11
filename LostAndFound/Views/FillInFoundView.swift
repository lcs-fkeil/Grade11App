//
//  FillInFoundView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-11.
//

import SwiftUI

struct FillInFoundView: View {
    
    @State var dateFound = Date.now
    
    
    
    var body: some View {
        ScrollView{
            
            
            TextField("Title",
                      text: .constant(""),
                      prompt: Text("Title"))
                .padding()
            
            HStack{
                            Text("Date and time the Object was found")
                                .padding(.horizontal)
                            Spacer()
                        }

            DatePicker("please enter a date", selection: $dateFound)
                .labelsHidden()
            
            
            
            
            
            HStack{
                Text("Aditional Notes")
                    .padding(.horizontal)
                Spacer()
            }
            
            TextField("Any aditional notes",
                      text: .constant(""),
                      prompt: Text("Type something..."))
                .padding(.horizontal)
            
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Add")
            })
                .buttonStyle(.bordered)
                .padding()
            
        }
        .navigationTitle("New found item")
        
    }
}


struct FillInFoundView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FillInFoundView()
        }
    }
}
