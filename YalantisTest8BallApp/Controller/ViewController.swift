//
//  ViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import UIKit

import Foundation

protocol SecondViewControllerDelegate: AnyObject {
    func addToAnswersArray(text: String)
    func removeFromAnswersArray(text: String)
}

class ViewController: UIViewController, UITabBarControllerDelegate {

    @IBOutlet weak var answersLabel: UILabel!
    var answers = ["Yes", "No", "Maybe"]
    let urlString = "https://www.eightballapi.com/api"
    var statusCode = 0
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        let randomIndex = Int.random(in: 0..<answers.count)
        if self.statusCode != 200 {
            answersLabel.text = answers[randomIndex]
        } else {
            fetchAnswer()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getStatusCode()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabBarController = self.tabBarController {
            if let settingsViewController = tabBarController.viewControllers?[1] as? settingsTableViewController {
                settingsViewController.delegate = self
            }
        }
        
        getStatusCode()
    }
    
    func getStatusCode() {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let response = response as? HTTPURLResponse {
                self.statusCode = response.statusCode
            }
        }.resume()
    }
    func fetchAnswer() {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let answer = try JSONDecoder().decode(ReadingData.self, from: data)
                DispatchQueue.main.async {
                    self.answersLabel.text = answer.reading
                }
            } catch let error {
                print(error)
            }
        }.resume()
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
