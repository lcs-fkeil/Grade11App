//
//  FillInView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2021-11-29.
//

import SwiftUI

struct FillInView: View {
    var body: some View {
        ScrollView{
            
            
            TextField("Title",
                      text: .constant(""),
                      prompt: Text("Title"))
                .padding()
            
           
            HStack{
                Text("Date the Object was lost")
                    .padding(.horizontal)
                Spacer()
            }
            
            TextField("Date the object was lost",
                      text: .constant(""),
                      prompt: Text("Type something..."))
                .padding(.horizontal)
            
            HStack{
                Text("Time the Object was lost")
                    .padding(.horizontal)
                Spacer()
            }
            
            TextField("Time the object was lost",
                      text: .constant(""),
                      prompt: Text("Type something..."))
                .padding(.horizontal)
            
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
        .navigationTitle("New lost item")
    }
}

struct FillInView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        FillInView()
        }
    }
}
