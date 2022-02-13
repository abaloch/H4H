//
//  welcomeBack.swift
//  h4hv1
//
//  Created by Jodi Chui on 2/13/22.
//

import UIKit


class welcomeBack: UIViewController {
    

    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBOutlet weak var toCheckInPage1: UIButton!
    
    func makePhoneCall(phoneNumber: String) {
        if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {

                let alert = UIAlertController(title: ("Call " + phoneNumber + "?"), message: nil, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Call", style: .default, handler: { (action) in
                    UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
                }))

                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
    }
    
    @IBAction func SOS(_ sender: UIButton) {
        makePhoneCall(phoneNumber: "911")
    }
    
    @IBAction func toCheck1page(_ sender: UIButton) {
        performSegue(withIdentifier: "seguefive", sender: self) //TO MOVE TO NEXT VIEW!!!
        
    }
    
}
