//
//  MenuItem.swift
//  Restaurant
//
//  Created by Ludovic Ollagnier on 26/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation

struct MenuItem {

    enum MenuCategory {
        case appetizer, first, main, desert, drink
    }

    let name: String
    var itemDetails: String
    var price: Double
    let category: MenuCategory
    var imageURL: String

    var isVegan: Bool
    var isGlutenFree: Bool
}
