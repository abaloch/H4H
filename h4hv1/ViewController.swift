//
//  ViewController.swift
//  h4hv1
//
//  Created by Asad Baloch on 2/12/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
   
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var endDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func pickedDateTime(_ sender: UIDatePicker) {
        
        print(DatePicker.date)
        
        //
    }
    
    @IBAction func pickedEndTime(_ sender: UIDatePicker) {
        print(endDatePicker.date)
        
        
        print(type(of: endDatePicker.date))
        
        
    }
    
    @IBAction func continueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
            
    }
    
}

