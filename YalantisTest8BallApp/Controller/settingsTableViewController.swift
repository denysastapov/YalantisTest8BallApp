//
//  settingsTableViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import UIKit

class settingsTableViewController: UITableViewController {
    
    var delegate: SecondViewControllerDelegate?
    
    var userAnswersToAdd = ["Yes, definitely", "It is certain", "Without a doubt", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userAnswersToAdd.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = userAnswersToAdd[indexPath.row]
        
        let switchView = UISwitch(frame: .zero)
        switchView.setOn(false, animated: true)
        switchView.tag = indexPath.row
        switchView.addTarget(self, action: #selector(self.switchChanged(_:)), for: .valueChanged)
        cell.accessoryView = switchView

        return cell
    }
    
    @objc func switchChanged(_ sender : UISwitch!){
        if sender.isOn {
            self.delegate?.addToAnswersArray(text: userAnswersToAdd[sender.tag])
        } else {
            self.delegate?.removeFromAnswersArray(text: userAnswersToAdd[sender.tag])
        }
    }
}
