//
//  ViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import UIKit

import Foundation

protocol SecondViewControllerDelegate {
    func addToAnswersArray(text: String)
    func removeFromAnswersArray(text: String)
}

class ViewController: UIViewController, UITabBarControllerDelegate {

    @IBOutlet weak var answersLabel: UILabel!
    var answers = ["Yes", "No", "Maybe"]
    private let networkManager = NetworkManager()
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        fetchAnswer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabBarController = self.tabBarController {
            if let settingsViewController = tabBarController.viewControllers?[1] as? settingsTableViewController {
                settingsViewController.delegate = self
            }
        }
    }
    
    func setRandomAnswer() {
        let randomIndex = Int.random(in: 0..<self.answers.count)
        self.answersLabel.text = self.answers[randomIndex]
    }
    
    func fetchAnswer() {
        if !networkManager.isNerworkAllowed {
            setRandomAnswer()
        }
        networkManager.getAnswer { answer in
            if let answer = answer {
                self.answersLabel.text = answer
            } else {
                self.setRandomAnswer()
            }
        }
    }
}
extension ViewController: SecondViewControllerDelegate {
    func addToAnswersArray(text: String) {
        answers.append(text)
    }
    func removeFromAnswersArray(text: String) {
        answers = answers.filter {$0 != text}
    }
}
