//
//  QuizViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import Foundation
import UIKit

class QuizViewController: UIViewController {

    //MARK: Variables
    var questions: [Question] = []
    
    //MARK: - Outlets
    @IBOutlet var CategoryLabel: UILabel!
    @IBOutlet var QuestionImage: UIImageView!
    @IBOutlet var QLabel: UILabel!          //Pergunta
    @IBOutlet var Buttons: [UIButton]!      //Opções
    @IBOutlet var PView: UIProgressView!    //Barra de progresso
    
    
    //MARK: - Variables
    var QProgress = Float()
    var TotalQuestions = 5
    
    
    //MARK: - Lyfe Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let question = questions.first {
            DispatchQueue.main.async {
                self.QLabel.text = question.Question
                self.QuestionImage.image = question.Image
            }
        }
    }
    
    //MARK: - Actions
    @IBAction func btn1(_ sender: Any) {
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        
    }
    
    @IBAction func btn3(_ sender: Any) {
        
    }
    
    @IBAction func btn4(_ sender: Any) {
       
    }

}
