//
//  contacts.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit



class contacts: UIViewController {

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


