//
//  ViewController.swift
//  SpmExample
//
//  Created by Caner Çakal on 14.02.2026.
//

import UIKit
import Alamofire
import SnapKit
import Kingfisher
import FLEX

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - FLEX
    func setupFLEXGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didFlexGestureRecognized( _:)))
        gesture.numberOfTapsRequired = 2
        gesture.numberOfTouchesRequired = 2
        view.addGestureRecognizer(gesture)
    }
    
    @objc func didFlexGestureRecognized(_ sender: UITapGestureRecognizer) {
        FLEXManager.shared.showExplorer()
    }
    //MARK: - Kingfisher
    func setImageViewViaKingfisher() {
        imageView.kf.setImage(with: URL(string: "https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
    }
    
    func setImageViewViaAlamofire() {
        let url = URL(string: "https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
        let cache = NSCache<AnyObject, AnyObject>()
        
        if let imageFromCache = cache.object(forKey: url as AnyObject) as? UIImage {
            imageView.image = imageFromCache
            return
        }
        
        AF.request(url!, method: .get).response { response in
            switch response.result {
            case .failure(let error):
                print(error)
            case .success(let data):
                guard let data = data,
                      let image = UIImage(data: data) else {
                    return
                }
                cache.setObject(image,
                                forKey: url as AnyObject)
                self.imageView.image = image
            }
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
    
}
