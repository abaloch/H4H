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
    
    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func symbolClicked(_ sender: UIButton) {
        formOfAuth = "Symbol"
        symbol.backgroundColor = UIColor.purple
    }
    
    @IBAction func wordClicked(_ sender: UIButton) {
        formOfAuth = "WORD"
        word.backgroundColor = UIColor.purple
    }
    
    
    @IBOutlet var passwordButton: UIButton!
    
    
    @IBAction func passwordButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "seguefour", sender: self)
    
    }
    
 
}
