//
//  YesOrNoVC.swift
//  ShouldIOrShouldINot
//
//  Created by Thomas Bishop on 8/15/16.
//  Copyright © 2016 Bishop Software. All rights reserved.
//

import UIKit

class YesOrNoVC: UIViewController {

    @IBOutlet weak var yesOrNoText: UILabel!
    @IBOutlet weak var randomBtn: UIButton!
    
    // This is a translucent black.
    let color2 = UIColor(red: 0,
                         green: 0,
                         blue: 0,
                         alpha: 0.1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resetView()
//        self.yesOrNoText.text = "Yes or No"
//        self.yesOrNoText.font = UIFont (name: "Noteworthy-Light", size: 80)
//        self.yesOrNoText.textColor = color2
//        self.randomBtn.setTitle("Select", forState: UIControlState.Normal)

    }
    
    override func viewWillAppear(animated: Bool) {
        self.randomBtn.layer.cornerRadius = 10.0
    }

    func resetView() {
        self.randomBtn.setTitle("Select", forState: UIControlState.Normal)
        self.yesOrNoText.text = "Yes or No"
        self.yesOrNoText.font = UIFont (name: "Noteworthy-Light", size: 80)
        self.yesOrNoText.textColor = color2
    }
    
    @IBAction func doneBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func yesOrNoBtnPressed(sender: AnyObject) {
        
        if self.randomBtn.currentTitle == "Reset" {
            resetView()
            //self.yesOrNoText.opaque = true
            
        } else {
        
            let random = Int(arc4random_uniform(2))
        
            self.yesOrNoText.font = UIFont (name: "Noteworthy-Light", size: 196)
            self.yesOrNoText.textColor = UIColor.blackColor()
            //self.yesOrNoText.opaque = false
            
            if random == 0 {
                self.yesOrNoText.text = "Yes"
            } else {
                self.yesOrNoText.text = "No"
            }
        
            self.randomBtn.setTitle("Reset", forState: UIControlState.Normal)
        }
    }
    
}
