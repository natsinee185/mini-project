//
//  Question.swift
//  WhoAreThey
//
//  Created by pppppp on 15/11/2561 BE.
//  Copyright © 2561 Natsinee Thanannirat. All rights reserved.
//

import Foundation

class Question {
    let questionImg : String
    let question : String
    let questionText1 : String
    let questionText2 : String
     let correct : Int
    init(image : String, questiontext : String, choice1 : String, choice2 : String, answer :Int) {
        questionImg = image
        question = questiontext
        questionText1 = choice1
        questionText2 = choice2
        correct = answer
    }
}

