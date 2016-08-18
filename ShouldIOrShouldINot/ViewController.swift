//
//  ViewController.swift
//  ShouldIOrShouldINot
//
//  Created by Thomas Bishop on 8/15/16.
//  Copyright © 2016 Bishop Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flipBtn: UIButton!
    @IBOutlet weak var chooseThisOrThatBtn: UIButton!
    @IBOutlet weak var yesOrNoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        
        //self.flipBtn.backgroundColor = UIColor(red: (1 / 1), green: (0 / 0), blue: (0 / 0), alpha: 1.0)
        //self.flipBtn.backgroundColor = UIColor(red: (1), green: (0), blue: (0), alpha: 1)
        //self.flipBtn.titleLabel?.textColor = UIColor(red: (1), green: (1), blue: (1), alpha: 1)
        
        self.flipBtn.layer.cornerRadius = 10.0;
        
        self.flipBtn.layer.borderWidth = 2.0;
        self.flipBtn.layer.borderColor = UIColor.clearColor().CGColor
        
        self.flipBtn.layer.shadowColor = UIColor(red: (0.5), green: (0), blue: (0), alpha: 1.0).CGColor
        self.flipBtn.layer.shadowOpacity = 1.0
        self.flipBtn.layer.shadowRadius = 1.0
        self.flipBtn.layer.shadowOffset = CGSizeMake(0, 3);
        
        self.chooseThisOrThatBtn.layer.cornerRadius = 10.0;
        
        self.chooseThisOrThatBtn.layer.borderWidth = 2.0;
        self.chooseThisOrThatBtn.layer.borderColor = UIColor.clearColor().CGColor
        
        self.yesOrNoBtn.layer.cornerRadius = 10.0;
        
        self.yesOrNoBtn.layer.borderWidth = 2.0;
        self.yesOrNoBtn.layer.borderColor = UIColor.clearColor().CGColor
        
    }
    
}

