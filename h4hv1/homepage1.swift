// This contains code for homepage1. This is after the loading page and before setup page. This allows users to click the button to plan their night or to call 911.

import UIKit

class Homepage1: UIViewController {

    
    override func viewDidLoad() { //this is like the MAIN function
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBOutlet weak var toContactsPageLabel: UIButton!
    
    @IBAction func toContactsPage(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
//    @IBAction func toContactsPage(_ sender: UIButton) {
//        performSegue(withIdentifier: "segue", sender: self) //TO MOVE TO NEXT VIEW!!!
//    }
    
//    func makePhoneCall(phoneNumber: String) {
//        if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {
//
//                let alert = UIAlertController(title: ("Call " + phoneNumber + "?"), message: nil, preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: "Call", style: .default, handler: { (action) in
//                    UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
//                }))
//
//                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//                self.present(alert, animated: true, completion: nil)
//            }
//    }

//    @IBAction func SOS(_ sender: UIButton) {
//        makePhoneCall(phoneNumber: "911")
//    }
    
    
   

}
