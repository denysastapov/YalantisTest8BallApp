//
//  Answer.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import Foundation

struct Magic {
    
    var question: String
    var answer:  [String]
    var type: String
    
    init?(dict: [String: AnyObject]){
        guard let question = dict["question"] as? String,
              let answer = dict["answer"] as? String,
              let type = dict["type"] as? String else { return nil }
        
        self.question = question
        self.answer = [answer]
        self.type = type
    }
    
}
