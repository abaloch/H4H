//
//  ViewController.swift
//  HackathonH4H
//
//  Created by Liam A'Hearn on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet var next_button: UIButton!
    
    
    @IBAction func button_clicked(_ sender: Any) {
        print("Button clicked once!")
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    
        
        
    }
    
    
    
}

