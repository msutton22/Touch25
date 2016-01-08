//
//  ViewController.swift
//  Touch25
//
//  Created by Maddy Sutton on 11/24/15.
//  Copyright © 2015 Maddy Sutton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    var myEnd1 = End()
    //class object
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func onPlayPressed(sender: AnyObject) {
        myEnd1.name = nameField.text!
        nameField.resignFirstResponder()
        if nameField.text?.characters.count != 0 {
       performSegueWithIdentifier("Play", sender: self)
        }
    }
    
      override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       let dvc = segue.destinationViewController as! mainViewController
    dvc.myEnd2 = myEnd1
        }
}

