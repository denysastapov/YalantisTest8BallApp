//
//  NetworkManager.swift
//  YalantisTest8BallApp
//
//  Created by Denys Astapov on 03.11.2023.
//

import Foundation
import Reachability

class NetworkManager {
    
    private static let urlString = "https://www.eightballapi.com/api"
    private(set) var isNerworkAllowed: Bool = true
    
    private let reachability = try! Reachability()
    
    init(){
        reachability.whenReachable = { [unowned self] _ in
            isNerworkAllowed = true
        }
        reachability.whenUnreachable = { [unowned self] _ in
            isNerworkAllowed = false
        }
        do {
            try reachability.startNotifier()
        } catch {
            isNerworkAllowed = false
        }
    }
    
    func getAnswer(completion: @escaping (String?) -> Void){
        guard let url = URL(string: NetworkManager.urlString) else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { 
                completion(nil)
                return
            }
            do {
                let answer = try JSONDecoder().decode(ReadingData.self, from: data)
                DispatchQueue.main.async {
                    completion(answer.reading)
                }
            } catch let error {
                completion(nil)
                print(error)
            }
        }.resume()
    }
}

