//
//  ViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answersLabel: UILabel!
    
    var answers = ["Yes", "No", "Maybe"]
    
    let urlString = "https://8ball.delegator.com/magic/JSON/1"
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                
                let answer = try JSONDecoder().decode(Welcome.self, from: data)
                
                DispatchQueue.main.async {
                    self.answersLabel.text = answer.magic.answer
                }
                
            } catch let error {
                
                print(error)
                
            }
            
        }.resume()
    }
}
