//
//  password.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit


class password: UIViewController {
    
    var formOfAuth = "fill_this_in" // user chooses Symbol or WORD

    @IBOutlet weak var symbol: UIImageView!
    
    @IBOutlet weak var word: UIImageView!
    
    @IBOutlet weak var arrow: UIButton!
    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    
    @IBAction func toWelcomeBackPage(_ sender: UIButton) {
        performSegue(withIdentifier: "seguefour", sender: self)
    }
    
    @IBAction func chooseSymbol(_ sender: UIButton) { // store user's choice of Symbol for backend
        formOfAuth = "Symbol"
    }
    
    @IBAction func chooseWORD(_ sender: UIButton) { // store user's choice WORD for backend
        formOfAuth = "WORD"
    }
}
