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
        //BIOLOGICAS
        
        let question1 = Question(Question: "Em 1172, Daniel Rutherford descobriu um elemento que ficou conhecido como “ar venenoso”. Esse elemento é o:", Answers: ["Nitrogênio","Hélio","Enxofre","Argônio"], Answer: 1, Image: #imageLiteral(resourceName: "Lua"))
        let question2 = Question(Question: "Qual o fator relevante da quarta dimensão?", Answers: ["Comprimento","Longitude","Latitude","Tempo"], Answer: 4, Image: #imageLiteral(resourceName: "Lua"))
        let question3 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question4 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question5 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question6 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        
        return [question1,question2,question3,question4,question5,question6]
        
    }()
    
    var tema2: [Question] = {
        //LOGICA
        
        let question1 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question2 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question3 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question4 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question5 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question6 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        
        return [question1,question2,question3,question4,question5,question6]
        
    }()
    
    var tema3: [Question] = {
        //AUDIOVISUAL
        
        let question1 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question2 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question3 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question4 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question5 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question6 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        
        return [question1,question2,question3,question4,question5,question6]
        
    }()
    
    var tema4: [Question] = {
        //HUMANAS
        
        let question1 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question2 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question3 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question4 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Buttom trevas"))
        let question5 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        let question6 = Question(Question: "Quest˜indkjas ", Answers: ["aaa","bbb","ccc","ddd"], Answer: 2, Image: #imageLiteral(resourceName: "Lua"))
        
        return [question1,question2,question3,question4,question5,question6]
        
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
    @IBOutlet var onGoQuizThree: UIButton!
    @IBOutlet var onGoQuizFour: UIButton!
    
    
    //MARK: - Actions
    @IBAction func onGoQuizOne (_ sender: UIButton) {
        let view = getQuizController(question: tema1)
        navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func onGoQuizTwo(_ sender: Any) {
        let view = getQuizController(question: tema2)
        navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func onGoQuizThree(_ sender: Any) {
        let view = getQuizController(question: tema3)
        navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func onGoQuizFour(_ sender: Any) {
        let view = getQuizController(question: tema4)
        navigationController?.pushViewController(view, animated: true)
    }
    
    func getQuizController(question: [Question]) -> QuizViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let quizView = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController
        quizView?.questions = question
        return quizView!
    }
    
}

