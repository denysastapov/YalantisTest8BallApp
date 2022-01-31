//
//  TabBarViewController.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 31.01.2022.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
        
    }

//        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//
//            if viewController is ViewController {
//                print("First tab")
//            } else if viewController is settingsTableViewController {
//                print("Second tab")
//            }
//        }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
