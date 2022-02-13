//
//  homepage1.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/12/22.
//
// This contains code for homepage1. This is after the loading page and before setup page. This allows users to click the button to plan their night or to call 911.

import UIKit

class Homepage1: UIViewController {

    
    @IBOutlet weak var planMyNight: UIButton!
    
    @IBAction func planMyNightFunc(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self) //TO MOVE TO NEXT VIEW!!!
    }
    

    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    

}

