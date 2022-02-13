//
//  landingPage.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/12/22.
//

import UIKit

class landingPage: UIViewController {

    
 
    @IBAction func nextPage(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self) //TO MOVE TO NEXT VIEW!!!

    }

    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    

}

