//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Snehal on 2/6/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question
{
    let questionText : String
    let answer : String
    
    init(q:String,a:String)
    {
        questionText = q
        answer = a
    }
    
}
