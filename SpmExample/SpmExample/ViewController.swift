//
//  ViewController.swift
//  SpmExample
//
//  Created by Caner Çakal on 14.02.2026.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func fetcWithAlamofire() {
        AF.request("https://httpbin.org/get").response { response in
            debugPrint(response)
        }
    }
    
    func fetcWithURLSession() {
        let url = URL(string: "https://www.stackoverflow.com")
        let request = URLRequest(url: url!)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                return
            }
            print(String(data: data, encoding: .utf8) ?? "Data not found or not in correct format!")
        }
        task.resume()
    }


}

