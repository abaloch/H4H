//
//  planYourNight.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit

struct passValues{
    static var startTime = "21:30:00"
    static var endTime = "01:00:00"
}

class planYourNight: UIViewController {

    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    

    @IBOutlet var planningButton: UIButton!
    
    @IBAction func planningButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "segue3", sender: self)
    }
}
