//
//  contacts.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit




class contacts: UIViewController {
   

    @IBOutlet weak var yourName: UITextField!
    
    @IBOutlet weak var yourNumber: UITextField!
    
    @IBOutlet weak var cf1: UITextField!
    
    @IBOutlet weak var cf2: UITextField!
    
    @IBOutlet weak var cf3: UITextField!
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        let apiRequest = APIRequest()
        let current_user = User(Name: yourName.text, Ph: yourNumber.text)
        apiRequest.requestAPIInfo { (apiResult) in
            print (apiResult)
        }
    }
    
    
    
    
    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBOutlet weak var contactArrow: UIButton!
    
//    @IBOutlet weak var toPlanningPage: UIButton!
//    
    @IBAction func toPlanningPage(_ sender: UIButton) {
        performSegue(withIdentifier: "seguetwo", sender: self) //TO MOVE TO NEXT VIEW!!!
        
    }
    
    
}


