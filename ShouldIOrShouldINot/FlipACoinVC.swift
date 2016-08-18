//
//  FlipACoinVC.swift
//  ShouldIOrShouldINot
//
//  Created by Thomas Bishop on 8/15/16.
//  Copyright © 2016 Bishop Software. All rights reserved.
//

import UIKit

class FlipACoinVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }

}
