//
//  EndViewController.swift
//  Touch25
//
//  Created by Maddy Sutton on 12/10/15.
//  Copyright © 2015 Maddy Sutton. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet weak var viewText: UITextView!
    var myEnd3 = End()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         viewText.text = myEnd3.getScore()
    }
}
