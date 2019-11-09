//
//  QuizViewController.swift
//  swift-quiz
//
//  Created by ANA THAYNA CONCEICAO FRANCA on 05/11/2019.
//  Copyright © 2019 ANA THAYNA CONCEICAO FRANCA. All rights reserved.
//

import UIKit


//MARK: - Structs
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
    //var Image : String!
}


class QuizViewController: UIViewController {

    
    //MARK: - Outlets
    @IBOutlet var QLabel: UILabel!      //Pergunta
    @IBOutlet var Buttons: [UIButton]!    //Opções
    
    
    //MARK: - Variables
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    
    
    //MARK: - Lyfe Cicle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Questions = [Question(Question: "o que é o que é", Answers: ["ué","coé","soé","poisé"], Answer: 3)]
    }
    
    
    //MARK: - Functions
    func PickQuestion(){
        if Questions.count > 0{
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControl.State.normal)
            }
            
            Questions.remove(at: QNumber)
            
        }
        else{
            NSLog("Fechou!")
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
