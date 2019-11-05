//
//  ViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var onGoMainButton: UIView!
    
    @IBAction func noGoMainButton(_ sender: Any) {
        performSegue(withIdentifier: "Main", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

