//
//  DetailView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-12.
//

import SwiftUI

struct DetailView: View {
    
    let details: Item
    
   
    
    var formattedDateAndTimeFound: String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: details.date)
    }
    
    var body: some View {
        
        
        HStack {
            Text(details.title)
                .font(Font.title)
            .padding()
            
            Spacer()
        }
        
        HStack {
            Text(formattedDateAndTimeFound)
                .padding()
            
            Spacer()
        }
        
        HStack {
            Text("Additional notes:")
                .padding()
            
            Spacer()
        }
        HStack {
            Text(details.notes)
                .font(Font.body)
            .padding()
            
            Spacer()
        }
        
        Spacer()
        
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(details: exampleItems.first!)
        }
    }
}
