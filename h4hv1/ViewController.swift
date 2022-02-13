//
//  ViewController.swift
//  h4hv1
//
//  Created by Asad Baloch on 2/12/22.
//

import UIKit

//
//  api.swift
//  h4hv1
//
//  Created by Asad Baloch on 2/13/22.
//

import Foundation


struct User: Codable {
    var Name: String? = "yo"
    var Ph: String? = "11111111"
//    var startTime: String? = "06:43:00"
//    var endTime: String? =  "09:53:00"
//    var PType: String? = "Shape"
//    var PValue1:String? = "Horse"
//    var PValue2: String? = "badminton"
//    var CF1Num: String? = "111111111"
//    var CF2Num: String? = "222222222"
//    var CF3Num: String? = "333333333"
}

struct APIRequest {
    
    var resourceURL: URL
    let urlString = "http://127.0.0.1:5000/addUser"
   
    init() {
        resourceURL = URL(string: urlString)!
    }
    
    //create method to get decode the json
    func requestAPIInfo(completion: @escaping(Result<User, Error>) -> Void) {
        
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { (data, response, error) in
            
            guard error == nil else {
                print (error!.localizedDescription)
                print ("stuck in data task")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let jsonData = try decoder.decode(User.self, from: data!)
                completion(.success(jsonData))
            }
            catch {
                print ("an error in catch")
                print (error)
            }
            
            
        
        }
        dataTask.resume()
    }
}

class ViewController: UIViewController {

      
      override func viewDidLoad() {
          super.viewDidLoad()
      
      }
    
}

