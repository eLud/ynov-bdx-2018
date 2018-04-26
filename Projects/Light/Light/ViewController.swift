//
//  ViewController.swift
//  Light
//
//  Created by Ludovic Ollagnier on 13/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleLight(_ sender: UIButton) {

        isLightOn = !isLightOn

        switch isLightOn {
        case true:
            view.backgroundColor = UIColor.white
            sender.setTitle("OFF", for: UIControlState.normal)
        case false:
            view.backgroundColor = UIColor.black
            sender.setTitle("ON", for: UIControlState.normal)
        }

    }

}

