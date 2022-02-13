
//
//  ViewController.swift
//  h4hv1
//
//  Created by Asad Baloch on 2/12/22.
//

import UIKit
import Foundation

struct shareTime{
    static var sTime = ""
    static var eTime = ""
}

class ViewController: UIViewController {
    
   
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var EndPicker: UIDatePicker!
    
    @IBOutlet weak var moveOnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func pickedStartDateTime(_ sender: UIDatePicker) {
        
        //convert start time into a string
        let dt = DatePicker.date
        let dtF = DateFormatter()
        
        dtF.dateFormat = "HH:mm:ss"
        
        let dtstring = dtF.string(from: dt)
        print("start time:")
        print(dtstring)
        
        shareTime.sTime = dtstring
    }
    
    
    @IBAction func pickedEndDateTime(_ sender: UIDatePicker) {
        //convert start time into a string
        let dt0 = EndPicker.date
        let dt0F = DateFormatter()
        
        dt0F.dateFormat = "HH:mm:ss"
        
        let dt0string = dt0F.string(from: dt0)
        print("end time:")
        print(dt0string)
        
        shareTime.eTime = dt0string
    }
    
    //SKETCHY BUTTON ATTACHMENT
    @IBAction func didTapButton(_ sender: Any){
        //present(Controller2(), animated: true)
        performSegue(withIdentifier: "segue1", sender: self)
    }
}
