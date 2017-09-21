//
//  ViewController.swift
//  code_based_UI
//
//  Created by Michael Engel on 20/09/2017.
//  Copyright © 2017 Michael Engel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Setting backgroundcolor
        view.backgroundColor = UIColor.lightGray
        
        // Add subviews (bottom to top)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(text1)
        // Update auto layout constraints
        view.setNeedsUpdateConstraints()
    }
    
    // Mark: - Constraints
    
    override func updateViewConstraints() {
        
        button1Constraints()
        button2Constraints()
        button3Constraints()
        text1Constraints()
        super.updateViewConstraints()
    }
    
    func button1Constraints() {
        NSLayoutConstraint(
            item: button1,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .leftMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button1,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .rightMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button1,
            attribute: .top,
            relatedBy: .equal,
            toItem: topLayoutGuide,
            attribute: .top,
            multiplier: 1.0,
            constant: 20.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button1,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 10.0,
            constant: 50.0)
            .isActive = true
    }
    
    func button2Constraints() {
        NSLayoutConstraint(
            item: button2,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .leftMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button2,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .rightMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button2,
            attribute: .top,
            relatedBy: .equal,
            toItem: button1,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 20.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button2,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 10.0,
            constant: 50.0)
            .isActive = true
    }

    func text1Constraints() {
        NSLayoutConstraint(
            item: text1,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .leftMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: text1,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .rightMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: text1,
            attribute: .top,
            relatedBy: .equal,
            toItem: button2,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 20.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: text1,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 10.0,
            constant: 30.0)
            .isActive = true
    }
    
    
    func button3Constraints() {
        NSLayoutConstraint(
            item: button3,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .leftMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button3,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .rightMargin,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button3,
            attribute: .top,
            relatedBy: .equal,
            toItem: text1,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 20.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button3,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 10.0,
            constant: 50.0)
            .isActive = true
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    lazy var button1: UIButton = {
        let tempButton = UIButton(type: UIButtonType.system)
        tempButton.backgroundColor = UIColor.green
        tempButton.translatesAutoresizingMaskIntoConstraints = false
        tempButton.setTitle("Print text", for: .normal)
        tempButton.backgroundColor = UIColor.black
        tempButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        tempButton.layer.cornerRadius = 10
        tempButton.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        tempButton.addTarget(self, action:#selector(button1_handler), for: UIControlEvents.touchUpInside)
        // Make the button visible
        return tempButton
    }()
    
    lazy var button2: UIButton = {
        let tempButton = UIButton(type: UIButtonType.system)
        tempButton.backgroundColor = UIColor.green
        tempButton.translatesAutoresizingMaskIntoConstraints = false
        tempButton.setTitle("Set default text", for: .normal)
        tempButton.backgroundColor = UIColor.black
        tempButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        tempButton.layer.cornerRadius = 10
        tempButton.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        tempButton.addTarget(self, action:#selector(button2_handler), for: UIControlEvents.touchUpInside)
        // Make the button visible
        return tempButton
    }()
    
    lazy var button3: UIButton = {
        let tempButton = UIButton(type: UIButtonType.system)
        tempButton.backgroundColor = UIColor.green
        tempButton.translatesAutoresizingMaskIntoConstraints = false
        tempButton.setTitle("Open test view", for: .normal)
        tempButton.backgroundColor = UIColor.black
        tempButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        tempButton.layer.cornerRadius = 10
        tempButton.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        tempButton.addTarget(self, action:#selector(button3_handler), for: UIControlEvents.touchUpInside)
        // Make the button visible
        return tempButton
    }()
    
    lazy var text1: UITextField = {

        let tempText = UITextField()
        tempText.translatesAutoresizingMaskIntoConstraints = false
        tempText.placeholder = "Type message here"
        tempText.text = ""
        tempText.borderStyle = UITextBorderStyle.line
        tempText.backgroundColor = UIColor.white
        tempText.borderStyle = UITextBorderStyle.roundedRect
        tempText.textColor = UIColor.black
        return tempText
    }()
    
    //Button1 handler
    func button1_handler(sender: UIButton) {
        print(text1.text!)
    }
    
    //Button2 handler
    func button2_handler(sender: UIButton) {
        text1.text = "Hello world!"
    }
    
    //Button3 handler
    func button3_handler(sender: UIButton) {
        let vc = TestViewController()
        self.present(vc, animated: true, completion: nil)
    }
}
