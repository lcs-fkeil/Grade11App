//
//  LostItem.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-12.
//

import Foundation

let string2 = "01/02/2016"

let dateFormatter2 = DateFormatter()


struct LostItem: Identifiable {
    
    let id: Int
    let title2: String
    let date2: Date
    let notes2: String
    
}

let exampleLostItem = LostItem(id: 1, title2: "charger", date2: Date(), notes2: "white laptop charger")

let exampleLostItems = [
    
    LostItem(id: 1, title2: "Charger", date2: Date(), notes2: "White laptop Charger")
    
    
]
