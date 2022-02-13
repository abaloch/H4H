//
//  checkInOne.swift
//  h4hv1
//
//  Created by Megan Wiser on 2/13/22.
//


import UIKit

class checkInOne: UIViewController {

//     performSegue(withIdentifier: "segueseven", sender: self) //TO
    
    @IBAction func toPassTest(_ sender: UIButton) {
        performSegue(withIdentifier: "seguesix", sender: self)
    }
    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    @IBAction func goToCheck2(_ sender: UIButton) {
        performSegue(withIdentifier: "seguesix", sender: self) //TO MOVE TO NEXT VIEW!!!

    }
}

