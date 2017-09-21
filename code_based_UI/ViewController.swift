//
//  ViewController.swift
//  code_based_UI
//
//  Created by Michael Engel on 20/09/2017.
//  Copyright © 2017 Michael Engel. All rights reserved.
//

import UIKit

class customViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Setting backgroundcolor
        view.backgroundColor = UIColor.lightGray
        
        // Call setup functions
        button1_setup()
        button2_setup()
        text1_setup()
        label1_setup()
    }
    
    // Create buttons
    var button1: UIButton!
    var button2: UIButton!
    
    // Create textfield
    var text1: UITextField!
    
    // Create label
    var label1: UILabel!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Button1 setup
    func button1_setup() {
        button1 = UIButton(type: UIButtonType.system)
        button1.setTitle("Print text", for: .normal)
        button1.bounds = CGRect(x: 0, y: 0, width: 300, height: 80)
        button1.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.25)
        button1.backgroundColor = UIColor.black
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        button1.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        button1.addTarget(self, action:#selector(button1_handler), for: UIControlEvents.touchUpInside)
        // Make the button visible
        view.addSubview(button1)
    }
    
    //Button1 handler
    func button1_handler(sender: UIButton) {
        print(text1.text!)
    }
    
    //Button2 setup
    func button2_setup() {
        button2 = UIButton(type: UIButtonType.system)
        button2.setTitle("Set default text", for: .normal)
        button2.bounds = CGRect(x: 0, y: 0, width: 300, height: 80)
        button2.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.25+80+20)
        button2.backgroundColor = UIColor.black
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        button2.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        button2.addTarget(self, action:#selector(button2_handler), for: UIControlEvents.touchUpInside)
        // Make the button visible
        view.addSubview(button2)
    }
    
    //Button2 handler
    func button2_handler(sender: UIButton) {
        text1.text = "Hello world!"
    }
    
    //Text1 setup
    func text1_setup() {
        text1 = UITextField(frame: CGRect(x: 0, y: 0, width: 300.00, height: 30.00))
        text1.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.25+80+20+50+25)
        text1.placeholder = "Type message here"
        text1.text = ""
        text1.borderStyle = UITextBorderStyle.line
        text1.backgroundColor = UIColor.white
        text1.textColor = UIColor.blue
        // Make the text visible
        view.addSubview(text1)
    }
    
    //Label1 setup
    func label1_setup() {
        label1 = UILabel(frame: CGRect(x: 0, y: 0, width: 300.00, height: 30.00))
        label1.text = "This is a label"
        label1.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.15)
        label1.textAlignment = NSTextAlignment.center
        // Make the label visible
        view.addSubview(label1)
    }
}
