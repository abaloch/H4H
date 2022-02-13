//
//  finalPage.swift
//  h4hv1
//
//  Created by Megan Wiser on 2/13/22.
//


import UIKit


class finalPage: UIViewController {
    

    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
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
    
//    @IBAction func SOS(_ sender: UIButton) {
//        makePhoneCall(phoneNumber: "911")
//    }
    
    @IBAction func SOS(_ sender: UIButton) {
        makePhoneCall(phoneNumber: "911")
    }
    
}
