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
            Picker(selection: .constant(2),
                   label: Text("Picker Name"),
                   content: {
                
                Text("Lost").tag(0)
                Text("Found").tag(1)
                
                
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding(20)
            
            TextField("Title",
                      text: .constant(""),
                      prompt: Text("Title"))
                .padding()
            
            AsyncImage(url: URL (string: "https://dummyimages.com/180x150"))
                .frame(width: 180, height: 150)
            
            HStack {
                Text("Category")
                    .padding(.leading, 15)
                Spacer()
            }
            
            
            Picker(selection: .constant(""),
                   label: Text("Picker Name"),
                   content: {
                
                Text("Clothing").tag(0)
                Text("Sportsequipment").tag(1)
                Text("Electronics").tag(2)
                Text("Glasses").tag(3)
                Text("School materials").tag(4)
                Text("Jewellery").tag(5)
                

            })
            .pickerStyle(WheelPickerStyle())
            .padding()
            
            HStack{
                Text("Date & Time the Object was lost or found")
                    .padding(.horizontal)
                Spacer()
            }
            
            TextField("Date and Time the object was lost or found",
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
        }
    }
}

struct FillInView_Previews: PreviewProvider {
    static var previews: some View {
        FillInView()
    }
}
