//
//  ViewController.swift
//  Light
//
//  Created by Иван Гребенюк on 26.04.2020.
//  Copyright © 2020 Ivan Grebeniuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightButton: UIButton!
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUi()
        
    }
    func updateUi() {
        //view.backgroundColor = lightOn ? .white : .green
        let colors = [UIColor.red, UIColor.orange,UIColor.yellow,  UIColor.blue, UIColor.green, UIColor.purple]
        if lightOn == true{
            view.backgroundColor = .white
        } else {
            view.backgroundColor = colors.randomElement()
        }
    }
    
}
