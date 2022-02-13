//
//  ViewController.swift
//  h4hv1
//
//  Created by Asad Baloch on 2/12/22.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func pickedDateTime(_ sender: UIDatePicker) {
        
        print(DatePicker.date)
        
        print(DatePicker.timeZone)
    }
    
}

