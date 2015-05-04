//
//  InviteViewController.swift
//  imin
//
//  Created by Alexey Blinov on 04/05/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import UIKit

class InviteViewController: UIViewController {

    @IBOutlet weak var letsGoButton: UIButton!
    @IBOutlet weak var whatAreWeDoingTextField: UITextField!
    @IBOutlet weak var whereAreWeGoingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func letsGoTapped(sender: AnyObject) {
        println("\(whatAreWeDoingTextField.text) at \(whereAreWeGoingTextField.text)")
        let alertController = UIAlertController(title: "Jamie says:", message: "\(whatAreWeDoingTextField.text) at \(whereAreWeGoingTextField.text)", preferredStyle: .Alert)
        
        let OKAction = UIAlertAction(title: "Cool!", style: .Default) { (action) in
            // ...
        }
        alertController.addAction(OKAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
