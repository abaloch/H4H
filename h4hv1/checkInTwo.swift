//
//  checkInTwo.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit

class checkInTwo: UIViewController {

//     performSegue(withIdentifier: "segueseven", sender: self) //TO
    
    @IBAction func toPassTest(_ sender: UIButton) {
        performSegue(withIdentifier: "segueseven", sender: self)
    }
    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        func toPassTestPage(_ sender: UIButton) {
//            performSegue(withIdentifier: "segueseven", sender: self) //TO
//        }
        
        

    }
    
}
