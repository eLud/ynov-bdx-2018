//
//  ViewController.swift
//  Restaurant
//
//  Created by Ludovic Ollagnier on 13/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var categorySegmentedControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var isVeganSwitch: UISwitch!
    @IBOutlet weak var isGlutenFreeSwitch: UISwitch!
    @IBOutlet weak var imageView: UIImageView!

    var menu = Menu(name: "Test")

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveItem(_ sender: UIButton) {

        guard categorySegmentedControl.selectedSegmentIndex != UISegmentedControlNoSegment else { return }
        let category = MenuItem.MenuCategory.allCases[categorySegmentedControl.selectedSegmentIndex]
        guard let name = nameTextField.text, name.count > 0 else { return }
        guard let description = descriptionTextView.text, description.count > 0 else { return }
        guard let priceString = priceTextField.text, let priceDouble = Double(priceString) else { return }
        let isVegan = isVeganSwitch.isOn
        let isGlutenFree = isGlutenFreeSwitch.isOn

        let item = MenuItem(name: name, itemDetails: description, price: priceDouble, category: category, imageURL: nil, isVegan: isVegan, isGlutenFree: isGlutenFree)

        menu.add(item)
    }

    private func configureUI() {
        configureCategorySegmentedControl()
        descriptionTextView.text = ""
    }

    private func configureCategorySegmentedControl() {

        categorySegmentedControl.removeAllSegments()
        for category in MenuItem.MenuCategory.allCases {
            categorySegmentedControl.insertSegment(withTitle: category.emojiValue, at: categorySegmentedControl.numberOfSegments, animated: false)
        }
    }

}

