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

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

