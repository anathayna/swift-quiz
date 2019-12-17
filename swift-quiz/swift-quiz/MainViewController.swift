//
//  MainViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: Variables
    var tema1: [Question] = {
        
        let question1 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "AppleAcademy"))
        let question2 = Question(Question: "Questndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question3 = Question(Question: "Qundkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question4 = Question(Question: "Questdkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "SenacLogo"))
        
        return [question1,question2,question3,question4]
        
    }()
    
    var tema2: [Question] = {
        
        let question1 = Question(Question: "Questdkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "AppleAcademy"))
        let question2 = Question(Question: "Questindkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question3 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "SenacLogo"))
        let question4 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        
        return [question1,question2,question3,question4]
        
    }()
    
    var tema3: [Question] = {
        
        let question1 = Question(Question: "Questndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question2 = Question(Question: "Quesdkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question3 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question4 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        
        return [question1,question2,question3,question4]
        
    }()
    
    var tema4: [Question] = {
        
        let question1 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "SenacLogo"))
        let question2 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question3 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        let question4 = Question(Question: "Quesndkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "LaunchImage"))
        
        return [question1,question2,question3,question4]
        
    }()
    
    //MARK: - Lyfe Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: Outlets
    @IBOutlet var onGoQuizOne: UIButton!
    @IBOutlet var onGoQuizTwo: UIButton!
    
    //MARK: - Actions
    @IBAction func onGoQuizOne (_ sender: UIButton) {
        let view = getQuizController(question: tema1)
        navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func onGoQuizTwo(_ sender: Any) {
        let view = getQuizController(question: tema2)
        navigationController?.pushViewController(view, animated: true)
    }
    
    func getQuizController(question: [Question]) -> QuizViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let quizView = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController
        quizView?.questions = question
        return quizView!
    }

}

