//
//  planYourNight.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit

struct varPass{
    static var startT = "12:30:00"
    static var endT = "00:30:00"
}



class planYourNight: UIViewController {

    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBOutlet weak var toPasswordPage: UIButton!
    
    @IBAction func toPWPage(_ sender: UIButton) {
        performSegue(withIdentifier: "seguethree", sender: self)
    }
    //    @IBOutlet weak var nextButton: UIButton!
//
//    @IBAction func toPasswordView(_ sender: UIButton) {
//        performSegue(withIdentifier: "seguethree", sender: self)
//    }
//
//
}

