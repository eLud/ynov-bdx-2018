//
//  ViewController.swift
//  Demo UI
//
//  Created by Ludovic Ollagnier on 12/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
    }

    @IBAction func helloWorld(_ sender: UIButton) {

        print("hello")
        textField.text = "Hello"
    }

}

