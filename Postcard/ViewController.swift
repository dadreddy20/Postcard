//
//  ViewController.swift
//  Postcard
//
//  Created by Anudeep Reddy Dwaram on 20/12/14.
//  Copyright (c) 2014 Anudeep Dwaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextFiled: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
	@IBOutlet weak var mailButton: UIButton!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
		messageLabel.textColor = UIColor.redColor()
		
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
		
		mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

