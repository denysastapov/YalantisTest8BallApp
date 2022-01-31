//
//  settingsTableViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import UIKit

class settingsTableViewController: UITableViewController {
    
    var userAnswersToAdd = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
        
    var userChoosenAnswers = [String]()
    
    @IBAction func addAnswer(_ sender: UISwitch) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return userAnswersToAdd.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = userAnswersToAdd[indexPath.row]
        
        let mySwitch = UISwitch()
        mySwitch.tag = indexPath.row
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        mySwitch.isOn = false
        cell.accessoryView = mySwitch

        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        
        userChoosenAnswers.append(userAnswersToAdd[sender.tag])
        
    }
    
}
