//
//  mainViewController.swift
//  Touch25
//
//  Created by Maddy Sutton on 12/1/15.
//  Copyright © 2015 Maddy Sutton. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var label0: Labels!
    @IBOutlet weak var label1: Labels!
    @IBOutlet weak var label2: Labels!
    @IBOutlet weak var label3: Labels!
    @IBOutlet weak var label4: Labels!
    @IBOutlet weak var label5: Labels!
    @IBOutlet weak var label6: Labels!
    @IBOutlet weak var label7: Labels!
    @IBOutlet weak var label8: Labels!
    @IBOutlet weak var label9: Labels!
    @IBOutlet weak var label10: Labels!
    @IBOutlet weak var label11: Labels!
    @IBOutlet weak var label12: Labels!
    @IBOutlet weak var label13: Labels!
    @IBOutlet weak var label14: Labels!
    @IBOutlet weak var label15: Labels!
    @IBOutlet weak var label16: Labels!
    @IBOutlet weak var label17: Labels!
    @IBOutlet weak var label18: Labels!
    @IBOutlet weak var label19: Labels!
    @IBOutlet weak var label20: Labels!
    @IBOutlet weak var label21: Labels!
    @IBOutlet weak var label22: Labels!
    @IBOutlet weak var label23: Labels!
    @IBOutlet weak var label24: Labels!
    var labelsArray = [Labels]()
    @IBOutlet weak var labelTime: UILabel!
    var time = 0.0
    var timer = NSTimer()
    var checkIfThere = false
    var checkIfThere2 = false
    var checkIfThere3 = false
    var checkIfThere4 = false
    var checkIfThere5 = false
    var checkIfThere6 = false
    var checkIfThere7 = false
    var checkIfThere8 = false
    var checkIfThere9 = false
    var checkIfThere10 = false
    var checkIfThere11 = false
    var checkIfThere12 = false
    var checkIfThere13 = false
    var checkIfThere14 = false
    var checkIfThere15 = false
    var checkIfThere16 = false
    var checkIfThere17 = false
    var checkIfThere18 = false
    var checkIfThere19 = false
    var checkIfThere20 = false
    var checkIfThere21 = false
    var checkIfThere22 = false
    var checkIfThere23 = false
    var checkIfThere24 = false
    var myEnd2 = End()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsArray.append(label0)
        labelsArray.append(label1)
        labelsArray.append(label2)
        labelsArray.append(label3)
        labelsArray.append(label4)
        labelsArray.append(label5)
        labelsArray.append(label6)
        labelsArray.append(label7)
        labelsArray.append(label8)
        labelsArray.append(label9)
        labelsArray.append(label10)
        labelsArray.append(label11)
        labelsArray.append(label12)
        labelsArray.append(label13)
        labelsArray.append(label14)
        labelsArray.append(label15)
        labelsArray.append(label16)
        labelsArray.append(label17)
        labelsArray.append(label18)
        labelsArray.append(label19)
        labelsArray.append(label20)
        labelsArray.append(label21)
        labelsArray.append(label22)
        labelsArray.append(label23)
        labelsArray.append(label24)
        //Adds labels to array of labels called labelsArray
       
        var a = Array(1...25)
        for label in labelsArray {
            let index = Int(arc4random_uniform(UInt32(a.count)))
            let randomNumber = a[index]
            a.removeAtIndex(index)
            label.text = "\(randomNumber)"
        //Assigns random numbers 1-25 to the labels without repeating the same number
            
        timer = NSTimer.scheduledTimerWithTimeInterval(0.25, target: self, selector: "update", userInfo: nil, repeats: true)
        labelTime.text = "\(0.0)"
        }
    }
        func update() {
        time = time + 0.01
            let roundNumber = Double(round(1000 * time)/1000)
        labelTime.text = "\(roundNumber)"
        print(roundNumber)
    }
    //Sets up timer on the screen
    
    @IBAction func tapsScreen(sender: UITapGestureRecognizer) {
    //When a label is tapped, check to see if the label is the next label in order from least to greatest to be tapped next
        for label in labelsArray {
            if CGRectContainsPoint(label.frame, sender.locationInView(backgroundView)) {
                if label.canTap{
                    if label.text == "\(1)"  {
                        label.text = " "
                        checkIfThere = true
                    }
                          if checkIfThere == true && label.text == "\(2)" {
                        label.text = " "
                            checkIfThere2 = true
                    }
                    if checkIfThere2 == true && label.text == "\(3)" {
                        label.text = ""
                        checkIfThere3 = true
                    }
                    if checkIfThere3 == true && label.text == "\(4)" {
                        label.text = ""
                        checkIfThere4 = true
                    }
                    if checkIfThere4 == true && label.text == "\(5)" {
                        label.text = ""
                        checkIfThere5 = true
                    }
                    if checkIfThere5 == true && label.text == "\(6)" {
                        label.text = ""
                        checkIfThere6 = true
                    }
                    if checkIfThere6 == true && label.text == "\(7)" {
                        label.text = ""
                        checkIfThere7 = true
                    }
                    if checkIfThere7 == true && label.text == "\(8)" {
                        label.text = ""
                        checkIfThere8 = true
                    }
                    if checkIfThere8 == true && label.text == "\(9)" {
                        label.text = ""
                        checkIfThere9 = true
                    }
                    if checkIfThere9 == true && label.text == "\(10)" {
                        label.text = ""
                        checkIfThere10 = true
                    }
                    if checkIfThere10 == true && label.text == "\(11)" {
                        label.text = ""
                        checkIfThere11 = true
                    }
                    if checkIfThere11 == true && label.text == "\(12)" {
                        label.text = ""
                        checkIfThere12 = true
                    }

                    if checkIfThere12 == true && label.text == "\(13)" {
                        label.text = ""
                        checkIfThere13 = true
                    }

                    if checkIfThere13 == true && label.text == "\(14)" {
                        label.text = ""
                        checkIfThere14 = true
                    }
                    if checkIfThere14 == true && label.text == "\(15)" {
                        label.text = ""
                        checkIfThere15 = true
                    }
                    if checkIfThere15 == true && label.text == "\(16)" {
                        label.text = ""
                        checkIfThere16 = true
                    }
                    if checkIfThere16 == true && label.text == "\(17)" {
                        label.text = ""
                        checkIfThere17 = true
                    }

                    if checkIfThere17 == true && label.text == "\(18)" {
                        label.text = ""
                        checkIfThere18 = true
                    }
                    if checkIfThere18 == true && label.text == "\(19)" {
                        label.text = ""
                        checkIfThere19 = true
                    }
                    if checkIfThere19 == true && label.text == "\(20)" {
                        label.text = ""
                        checkIfThere20 = true
                    }
                    if checkIfThere20 == true && label.text == "\(21)" {
                        label.text = ""
                        checkIfThere21 = true
                    }
                    if checkIfThere21 == true && label.text == "\(22)" {
                        label.text = ""
                        checkIfThere22 = true
                    }

                    if checkIfThere22 == true && label.text == "\(23)" {
                        label.text = ""
                        checkIfThere23 = true
                    }
                    if checkIfThere23 == true && label.text == "\(24)" {
                        label.text = ""
                        checkIfThere24 = true
                    }
                    if checkIfThere24 == true && label.text == "\(25)" {
                        label.text = ""
                        timer.invalidate()
                        myEnd2.time = time
                        performSegueWithIdentifier("End", sender: self)
                       //Goes to end view controller to give final score
                    }

                }
            }
        }
    }
                    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                    let dvc = segue.destinationViewController as! EndViewController
                    dvc.myEnd3 = myEnd2
                    //Uses prepare for segue to change the End class to the next view controller.
    }

}

