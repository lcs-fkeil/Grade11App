//
//  LostDetailView.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-12.
//

import SwiftUI

struct LostDetailView: View {
    
    let details2: LostItem
    
    
    var formattedDateAndTimeLost: String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: details2.date2)
    }
    
    var body: some View {
        
        
        HStack {
            Text(details2.title2)
                .font(Font.title)
                .padding()
            
            Spacer()
        }
        
        HStack {
            Text(formattedDateAndTimeLost)
                .padding()
            
            Spacer()
        }
        
        HStack {
            Text("Additional notes:")
                .padding()
            
            Spacer()
        }
        
        HStack {
            Text(details2.notes2)
                .font(Font.body)
                .padding()
            
            Spacer()
        }
        
        Spacer()
        
        
        
        
    }
}

struct LostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LostDetailView(details2: exampleLostItems.first!)
    }
}
