//
//  planYourNight.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit



class planYourNight: UIViewController {

    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
 
    
    @IBAction func toPasswordView(_ sender: UIButton) {
        performSegue(withIdentifier: "seguethree", sender: self)
    }
    
    
}

