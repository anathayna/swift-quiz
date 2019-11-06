//
//  MainViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet var onGoQuiz: UIButton!
    
    //MARK: - Actions
    @IBAction func onGoQuiz (_ sender: UIButton) {
        performSegue(withIdentifier: "Quiz", sender: self)
    }
    
    //MARK: - Lyfe Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
