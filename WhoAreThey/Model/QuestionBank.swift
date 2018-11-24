//
//  QuestionBank.swift
//  WhoAreThey
//
//  Created by pppppp on 15/11/2561 BE.
//  Copyright © 2561 Natsinee Thanannirat. All rights reserved.
//

import Foundation
class QuestionBank {
    var list = [Question] ()
    
    init() {
       list.append(Question(image : "h1", questiontext : "ข้อ 1 จากภาพ เขาคือใคร?", choice1 : "แชมป์ ไมยราฟ", choice2 : "แชมป์ พีรพล", answer :  1 ))
        //index = 0
        list.append(Question(image : "h2", questiontext : "ข้อ 2 จากภาพ เขาคือใคร?", choice1 : "MC King", choice2 : "B-king", answer :  1 ))
        //index = 1
        list.append(Question(image : "h3", questiontext : "ข้อ 3 จากภาพ เขาคือใคร?", choice1 : "Uma", choice2 : "torded", answer :  1 ))
        //index = 2
        list.append(Question(image : "h4", questiontext : "ข้อ 4 จากภาพ เขาคือใคร?", choice1 : "nice cnx", choice2 : "Halibvng", answer :  2 ))
        //index = 3
        list.append(Question(image : "h5", questiontext : "ข้อ 5 จากภาพ เขาคือใคร?", choice1 : "GT", choice2 : "DG", answer :  1 ))
        //index = 4
        list.append(Question(image : "h6", questiontext : "ข้อ 6 จากภาพ เธอคือใคร?", choice1 : "cayanide", choice2 : "ICE Maiden", answer :  1 ))
        //index = 5
        list.append(Question(image : "h7", questiontext : "ข้อ 7 จากภาพ เขาคือใคร?", choice1 : "KPN", choice2 : "KQ", answer :  2 ))
        //index = 6
        list.append(Question(image : "h8", questiontext : "ข้อ 8 จากภาพ เขาคือใคร?", choice1 : "illsick", choice2 : "P9D", answer :  1 ))
        //index = 7
        list.append(Question(image : "h9", questiontext : "ข้อ 9 จากภาพ เธอคือใคร?", choice1 : "nana", choice2 : "Feelling", answer :  2 ))
        //index = 8
        list.append(Question(image : "h10", questiontext : "ข้อ 10 จากภาพ เธอคือใคร?", choice1 : "wonderframe", choice2 : "wonder woman", answer :  1 ))
        //index = 9
    }
}
