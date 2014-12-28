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
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var enterNameTextField: UITextField!
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
		// Code will be evaluate when the button is pressed
		messageLabel.hidden = false
		messageLabel.text = enterMessageTextField.text
		messageLabel.textColor = UIColor.redColor()
		
        nameLabel.hidden = false
		nameLabel.text = enterNameTextField.text
		nameLabel.textColor = UIColor.blueColor()
		
        enterNameTextField.text = ""
		enterMessageTextField.text = ""
		enterNameTextField.resignFirstResponder()
		
		mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

