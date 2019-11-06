//
//  ViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet var onGoMainButton: UIButton!
    
    //MARK: - Actions
    @IBAction func onGoMainButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Main", sender: self)
    }
    
    //MARK: - Lyfe Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

