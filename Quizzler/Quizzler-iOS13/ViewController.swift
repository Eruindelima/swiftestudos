//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBotton: UIButton!
    @IBOutlet weak var falseBotton: UIButton!
    
    let quiz = [
        Question(text: "4 + 4 is equal to 8.", answer: "True"),
        Question(text: "5 + 3 is greater than 1", answer: "True"),
        Question(text: "3 + 8 is less than Ten.", answer: "False"),
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle //true,  false
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer{
            print("Right")
        } else {
            print("Wrong")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
        updateUI()
    }
    
    func updateUI(){
        
        questionLabel.text = quiz[questionNumber].text
    }
    
}

