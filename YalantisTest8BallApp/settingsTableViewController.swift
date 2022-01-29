//
//  settingsTableViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 29.01.2022.
//

import UIKit

class settingsTableViewController: UITableViewController {
    
    var userAnswers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userAnswers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = userAnswers[indexPath.row]

        return cell
    }

}
