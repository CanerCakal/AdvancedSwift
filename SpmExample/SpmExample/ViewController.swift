//
//  ViewController.swift
//  SpmExample
//
//  Created by Caner Çakal on 14.02.2026.
//

import UIKit
import Alamofire
import SnapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: - SnapKit
    
    func setConstraintViaSnapKit() {
        redView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(128.0)
            make.width.equalTo(256.0)
        }
    }
    func setConstraintViaAutoLayout() {
        redView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
redView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
redView.heightAnchor.constraint(equalToConstant: 128.0),
redView.widthAnchor.constraint(equalToConstant: 256.0)
        ])
    }
    
    //MARK: - Alamofire
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

