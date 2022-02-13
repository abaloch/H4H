//
//  password.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit


class password: UIViewController {
    
    var formOfAuth = "fill_this_in" // user chooses Symbol or WORD

//    @IBOutlet weak var symbol: UIImageView!
//
//    @IBOutlet weak var word: UIImageView!
    
    @IBOutlet weak var symbol: UIButton!
    
    @IBOutlet weak var word: UIButton!
    
    @IBOutlet weak var arrow: UIButton!
    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func symbolClicked(_ sender: UIButton) {
        formOfAuth = "Symbol"
    }
    
    @IBAction func wordClicked(_ sender: UIButton) {
        formOfAuth = "WORD"
    }
    
    @IBAction func toWelcomeBackPage(_ sender: UIButton) {
        performSegue(withIdentifier: "seguefour", sender: self)
    }
    
 
}
