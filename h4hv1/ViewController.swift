//
//  ViewController.swift
//  h4hv1
//
//  Created by Asad Baloch on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var planNightButton: UIButton!
    
    @IBAction func planNight(_ sender: UIButton) {
        // this function makes the button go to the next screen
        topLabel.text = "Planning"
        secondLabel.text = "Set your expected departure and arrival."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        welcomeFunc()
        getStartedFunc()
        //planNightFunc()
    }
    
    func welcomeFunc() {
        topLabel.text = "Welcome!"
    }
    
    func getStartedFunc() {
        secondLabel.text = "Let's get started."
    }
    
    func planNightFunc() {
        planNightButton.layer.cornerRadius = 12

    }
    
    
    
    
}

