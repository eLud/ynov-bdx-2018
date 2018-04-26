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
        case appetizer
        case first
        case main
        case desert
        case drink

        static var allCases: [MenuCategory] {
            return [.appetizer, .first, .main, .desert, .drink]
        }

        var emojiValue: String {
            switch self {
            case .appetizer:
                return "🥜"
            case .first:
                return "🍤"
            case .main:
                return "🍝"
            case .desert:
                return "🍰"
            case .drink:
                return "🍹"
            }
        }
    }

    let name: String
    var itemDetails: String
    var price: Double
    let category: MenuCategory
    var imageURL: String

    var isVegan: Bool
    var isGlutenFree: Bool
}
