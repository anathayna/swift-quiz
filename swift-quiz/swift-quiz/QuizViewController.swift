//
//  QuizViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import UIKit


////MARK: - Structs
//struct Question {
//    var Question : String!
//    var Answers : [String]!
//    var Answer : Int!
//    //var Image : String!
//}


class QuizViewController: UIViewController {

    
    //MARK: - Outlets
    @IBOutlet var QLabel: UILabel!      //Pergunta
    @IBOutlet var Buttons: [UIButton]!    //Opções
    @IBOutlet var PView: UIProgressView! //Barra de progresso
    
    
    //MARK: - Variables
    var Questins: [String: String] = [:]
    var QNumber = 0
    var AnswerNumber = Int()
    var QProgress = Float()
    let TotalQuestions = 5.0
    
    
    //MARK: - Lyfe Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Pegar questões e imagens da struct de perguntas, no QuizViewController.swift
        //Questions = [Q1: ["O que é o que é": "Ué", "Coé", "Soé", "Poisé" ], Q2: [], Q3: [], Q4: [], Q5: []]
            //[Question(Question: "o que é o que é", Answers: ["ué","coé","soé","pois é"], Answer: 0)]
        PickQuestion(Question: 0)
        
    }
    
    
    //MARK: - Functions
    func PickQuestion(Question: Int){
//        if Questions.count > 0{
//            //QNumber = 0
//            print(Questions[QNumber].Question, QNumber)
//            QLabel.text = Questions[QNumber].Question
//            AnswerNumber = Questions[QNumber].Answer
//
//            for i in 0..<Buttons.count{
//                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControl.State.normal)
//            }
//
//            //Remove a questão respondida da lista
//            //Questions.remove(at: QNumber)
//            
//            QNumber += 1
//            QProgress = Float(QNumber)/5
//            PView.setProgress(QProgress, animated: true)
//
//            print("rodou")
//
//            PickQuestion(Question: QNumber)
//        }
//        else{
//            NSLog("Fechou!")
//        }
    }
    
    //MARK: - Actions
    @IBAction func btn1(_ sender: Any) {
        if AnswerNumber == 0{
            PickQuestion(Question: 0)
        }
        else{
            NSLog("ERRROUUU!")
        }
    }
    
    @IBAction func btn2(_ sender: Any) {
        if AnswerNumber == 1{
            PickQuestion(Question: 0)
        }
        else{
            NSLog("ERRROUUU!")
        }
    }
    
    @IBAction func btn3(_ sender: Any) {
        if AnswerNumber == 2{
            PickQuestion(Question: 0)
        }
        else{
            NSLog("AEEEOW!")
        }
    }
    
    @IBAction func btn4(_ sender: Any) {
        if AnswerNumber == 3{
            PickQuestion(Question: 0)
        }
        else{
            NSLog("AEEEOW!")
        }
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
