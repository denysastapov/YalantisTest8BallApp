//
//  Answer.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import Foundation

struct Welcome: Codable {
    let magic: Magic
}

struct Magic: Codable {
    let question, answer, type: String
}
