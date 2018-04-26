//
//  Menu.swift
//  Restaurant
//
//  Created by Ludovic Ollagnier on 13/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation

class Menu {

    var restaurantName: String
    private var items: [MenuItem]

    var allItems: [MenuItem] {
        return items
    }

    init(name: String) {
        restaurantName = name
        items = []
    }

    func add(_ item: MenuItem) {
        items.append(item)
    }

    func remove(_ item: MenuItem) {

    }
}
