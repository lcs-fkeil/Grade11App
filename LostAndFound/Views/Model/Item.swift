//
//  Item.swift
//  LostAndFound
//
//  Created by Franka Keil on 2022-05-11.
//

import Foundation


let string = "01/02/2016"

let dateFormatter = DateFormatter()



struct Item : Identifiable {
    
    let id: Int
    let title: String
    let date: Date
    let notes: String
    
}


let exampleItem = Item(id: 1, title: "Necklace", date: Date(), notes: "golden necklace with a butterfly")

let exampleItems = [
    
    Item(id: 1, title: "Necklace", date: Date(), notes: "golden necklace with a butterfly")
    
]

