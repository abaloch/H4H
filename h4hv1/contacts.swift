//
//  contacts.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit
import Foundation


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
    
    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var zero: UITextField!
    @IBOutlet weak var one: UITextField!
    @IBOutlet weak var two: UITextField!
    @IBOutlet weak var three: UITextField!

    @IBOutlet var ContactButtonObj: UIButton!
    
    @IBAction func ContactButtonAction(_ sender: UIButton) {
        
        //On press, the button should keep all values from text fields and then move onto next screen?

        var name = ""
        var num0 = ""
        var num1 = ""
        var num2 = ""
        var num3 = ""
        
        
        if myName != nil {
            name = myName.text!
        }
        if zero != nil {
            num0 = zero.text!
        }
        if one != nil {
            num1 = one.text!
        }
        if two != nil {
            num2 = two.text!
        }
        if three != nil {
            num3 = three.text!
        }
    
        //Debug print statement
        print(name + " " + num0 + " " + num1 + " " + num2 + " " + num3)
        
        //To backend
        let defaults = UserDefaults.standard
        defaults.set(name, forKey: "Name")
        defaults.set(num0, forKey: "Ph")
        
    }
    
    
    @IBAction func ContactOne() {
        /*
        let phoneOne = one.text ?? "no value"{
            print(phoneOne)
        }
        */
    }
    
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
    }*/
    
}


