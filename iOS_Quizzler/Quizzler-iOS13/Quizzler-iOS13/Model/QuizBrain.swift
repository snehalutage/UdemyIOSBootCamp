//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Snehal on 2/6/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain
{
    //List of our questions
    let questions = [Question(q: "A slug's blood is green.", a: "True"),
                     Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                     Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                     Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                     Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                     Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                     Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                     Question(q: "Google was originally called 'Backrub'.", a: "True"),
                     Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                     Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                     Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                     Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    
    var questionNumer = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool
    {
        if userAnswer == questions[questionNumer].answer
        {
            //correct answer
            score += 1
            return true
        }
        else
        {
            return false
        }
    }
    
    mutating func nextQuestion()
    {
        if questionNumer + 1 < questions.count
        {
            questionNumer += 1
        }
        else
        {
            questionNumer = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String
    {
        return questions[questionNumer].questionText
    }
    
    func getProgress() -> Float
    {
        return Float(questionNumer + 1)/Float(questions.count)
    }
    
    func getScore() -> Int
    {
        return score
    }
}
