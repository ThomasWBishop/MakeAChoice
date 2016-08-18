//
//  ChooseThisOrThatVC.swift
//  PlayWithButtons
//
//  Created by Thomas Bishop on 8/14/16.
//  Copyright © 2016 Bishop Software. All rights reserved.
//

import UIKit

class ChooseThisOrThatVC: UIViewController {

    @IBOutlet weak var choice1Text: UITextField!
    @IBOutlet weak var choice2Text: UITextField!
    @IBOutlet weak var choice3Text: UITextField!
    @IBOutlet weak var choice4Text: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var makeMyChoiceBtn: UIButton!
    @IBOutlet weak var addMoreLabel: UILabel!
    
    var choiceArray: [Bool] = [false, false, false, false]
    var arrayCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //self.addBtn.hidden = false
        
    }

    override func viewWillAppear(animated: Bool) {
        self.makeMyChoiceBtn.layer.cornerRadius = 10.0
        resetScreen()
    }
    
    func resetScreen() {
       
        self.choice1Text.text = ""
        self.choice1Text.placeholder = "Choice 1"
        self.choice2Text.text = ""
        self.choice2Text.placeholder = "Choice 2"
        self.choice3Text.text = ""
        self.choice3Text.placeholder = "Choice 3"
        self.choice4Text.text = ""
        self.choice4Text.placeholder = "Choice 4"
        self.choice1Text.hidden = false
        self.choice2Text.hidden = false
        self.choice3Text.hidden = true
        self.choice4Text.hidden = true
        choiceArray[0] = true
        choiceArray[1] = true
        choiceArray[2] = false
        choiceArray[3] = false
        self.addBtn.hidden = false
        arrayCount = 2
        
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    @IBAction func addBtnPressed(sender: AnyObject) {
        
        self.addMoreLabel.text = ""
        
        if choiceArray[2] == false {
            choiceArray[2] = true
            arrayCount = 3
            self.choice3Text.hidden = false
        } else {
            choiceArray[3] = true
            self.addBtn.hidden = true
            self.choice4Text.hidden = false
            arrayCount = 4
        }
        
    }

    @IBAction func makeMyChoiceBtnPressed(sender: AnyObject) {
        
        if self.makeMyChoiceBtn.currentTitle == "Reset" {
            self.makeMyChoiceBtn.setTitle("Make My Choice", forState: UIControlState.Normal)
            resetScreen()
        } else {
            
            let random = Int(arc4random_uniform(UInt32(arrayCount)))
            
            switch random {
            case 0:
                self.choice1Text.hidden = false
                self.choice2Text.hidden = true
                self.choice3Text.hidden = true
                self.choice4Text.hidden = true
            case 1:
                self.choice1Text.hidden = true
                self.choice2Text.hidden = false
                self.choice3Text.hidden = true
                self.choice4Text.hidden = true
            case 2:
                self.choice1Text.hidden = true
                self.choice2Text.hidden = true
                self.choice3Text.hidden = false
                self.choice4Text.hidden = true
            case 3:
                self.choice1Text.hidden = true
                self.choice2Text.hidden = true
                self.choice3Text.hidden = true
                self.choice4Text.hidden = false
            default:
                self.choice1Text.hidden = true
                self.choice2Text.hidden = true
                self.choice3Text.hidden = true
                self.choice4Text.hidden = true
            }
            
            self.makeMyChoiceBtn.setTitle("Reset", forState: UIControlState.Normal)
            self.addBtn.hidden = true
            self.addMoreLabel.text = ""
        }
        
    }

}
