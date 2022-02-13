//  Homepage1.swift
//  HackathonH4H
//
//  Created by Liam A'Hearn on 2/12/22.
//

import Foundation


import UIKit

class Homepage1: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet var PlanMyNightButton: UIButton!
    
    @IBAction func GoToPlanning(_ sender: Any) {
        print("Button clicked twice!")
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        
    }
    
    
    
}
