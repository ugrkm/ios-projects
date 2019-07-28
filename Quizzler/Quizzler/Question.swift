//
//  Question.swift
//  Quizzler
//
//  Created by Umur Görkem Karaduman on 8.07.2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
}

class myOtherClass {
    let question = Question(text: "What is the meaning of life?", correctAnswer: true)
}
