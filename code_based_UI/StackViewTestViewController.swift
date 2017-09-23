//
//  StackViewTestViewController.swift
//  code_based_UI
//
//  Created by Michael Engel on 23/09/2017.
//  Copyright © 2017 Michael Engel. All rights reserved.
//
//https://makeapppie.com/2015/11/11/how-to-add-stack-views-programmatically-and-almost-avoid-autolayout/

import UIKit

// Struct for handling button matrix
struct grid {
    var rows, culloms: Int
    init(rows: Int, culloms: Int) {
        self.rows = rows
        self.culloms = culloms
    }
}

class StackViewTestViewController: UIViewController {
    //MARK: Properties
    
    var maxGridSize = grid(rows: 0,culloms: 4)
    var userGrid = grid(rows: 0,culloms: 0)
    var buttonArray1 = [UIButton]()
    var buttonArray2 = [UIButton]()
    var buttonArray3 = [UIButton]()
    var buttonArray4 = [UIButton]()
    var b1Count = 1
    var b2Count = 1
    var b3Count = 1
    var b4Count = 1
    var rowCount = 4
    var stackView = UIStackView()
    var btn1StackView = UIStackView()
    var btn2StackView = UIStackView()
    var btn3StackView = UIStackView()
    var btn4StackView = UIStackView()
    var setRowStackView = UIStackView()
    
    //MARK: Button handlers
    func addPad1(sender: UIButton) {
        if b1Count != 4 {
            UIView.animate(withDuration: 0.3){
                self.buttonArray1[self.b1Count].isHidden = false
            }
            b1Count = b1Count+1
        }
    }
    func remPad1(sender: UIButton) {
        if b1Count != 1 {
            b1Count = b1Count-1
            UIView.animate(withDuration: 0.3){
                self.buttonArray1[self.b1Count].isHidden = true
            }
        }
    }
    func addPad2(sender: UIButton) {
        if b2Count != 4 {
            UIView.animate(withDuration: 0.3){
                self.buttonArray2[self.b2Count].isHidden = false
            }
            b2Count = b2Count+1
        }
    }
    func remPad2(sender: UIButton) {
        if b2Count != 1 {
            b2Count = b2Count-1
            UIView.animate(withDuration: 0.3){
                self.buttonArray2[self.b2Count].isHidden = true
            }
        }
    }
    func addPad3(sender: UIButton) {
        if b3Count != 4 {
            UIView.animate(withDuration: 0.3){
                self.buttonArray3[self.b3Count].isHidden = false
            }
            b3Count = b3Count+1
        }
    }
    func remPad3(sender: UIButton) {
        if b3Count != 1 {
            b3Count = b3Count-1
            UIView.animate(withDuration: 0.3){
                self.buttonArray3[self.b3Count].isHidden = true
            }
        }
    }
    func addPad4(sender: UIButton) {
        if b4Count != 4 {
            UIView.animate(withDuration: 0.3){
                self.buttonArray4[self.b4Count].isHidden = false
            }
            b4Count = b4Count+1
        }
    }
    func remPad4(sender: UIButton) {
        if b4Count != 1 {
            b4Count = b4Count-1
            UIView.animate(withDuration: 0.3){
                self.buttonArray4[self.b4Count].isHidden = true
            }
        }
    }
    
    // MARK: Add/remove row handler
    func addRow(sender: UIButton) {
        if rowCount == 3 {
            setRowStackView.removeFromSuperview()
            stackView.addArrangedSubview(btn4StackView)
            stackView.addArrangedSubview(setRowStackView)
            rowCount = 4
        }
        print(rowCount)
    }
    
    func remRow(sender: UIButton) {
        if rowCount == 4 {
            setRowStackView.removeFromSuperview()
            btn4StackView.removeFromSuperview()
            stackView.addArrangedSubview(setRowStackView)
            rowCount = 3
        }
        print(rowCount)
    }
    
    func button10Handler(sender: UIButton) {
        buttonArray1[0].backgroundColor = UIColor.gray
        buttonArray1[0].setTitle("Tap tempo", for: .normal)
        buttonArray1[0].titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        let vc = TestViewController()
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
        
    }
    
    func button14Handler(sender: UIButton) {
        let vc = MainViewController()
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    //MARK: Instance methods
    func colorButton(withColor color:UIColor, title:String) -> UIButton{
        let newButton = UIButton(type: .system)
        newButton.backgroundColor = color
        newButton.setTitle(title, for: .normal)
        newButton.setTitleColor(UIColor.white, for: .normal)
        newButton.layer.cornerRadius = 10
        return newButton
    }
    
    
    func displayKeyboard(){
        //generate an array
        for _ in 0 ... maxGridSize.culloms-1 {
            buttonArray1 += [colorButton( withColor: UIColor.lightGray,title: "Pad")]
        }
        
        for _ in 0 ... maxGridSize.culloms-1 {
            buttonArray2 += [colorButton( withColor: UIColor.lightGray,title: "Pad")]
        }
        for _ in 0 ... maxGridSize.culloms-1 {
            buttonArray3 += [colorButton( withColor: UIColor.lightGray,title: "Pad")]
        }
        for _ in 0 ... maxGridSize.culloms-1 {
            buttonArray4 += [colorButton( withColor: UIColor.lightGray,title: "Pad")]
        }
        
        //Create 1. row
        let addPad1Btn = colorButton(withColor: UIColor.black, title: "Add pad")
        let remPad1Btn = colorButton(withColor: UIColor.black, title: "Remove pad")
        let set1StackView = UIStackView(arrangedSubviews: [addPad1Btn,remPad1Btn])
        set1StackView.axis = .vertical
        set1StackView.distribution = .fillEqually
        set1StackView.alignment = .fill
        set1StackView.spacing = 10
        
        let btn1StackView = UIStackView(arrangedSubviews: [buttonArray1[0],buttonArray1[1],buttonArray1[2],buttonArray1[3],set1StackView])
        btn1StackView.axis = .horizontal
        btn1StackView.distribution = .fillEqually
        btn1StackView.alignment = .fill
        btn1StackView.spacing = 10
        
        //Create 2. row
        let addPad2Btn = colorButton(withColor: UIColor.black, title: "Add pad")
        let remPad2Btn = colorButton(withColor: UIColor.black, title: "Remove pad")
        let set2StackView = UIStackView(arrangedSubviews: [addPad2Btn,remPad2Btn])
        set2StackView.axis = .vertical
        set2StackView.distribution = .fillEqually
        set2StackView.alignment = .fill
        set2StackView.spacing = 10
        
        let btn2StackView = UIStackView(arrangedSubviews: [buttonArray2[0],buttonArray2[1],buttonArray2[2],buttonArray2[3],set2StackView])
        btn2StackView.axis = .horizontal
        btn2StackView.distribution = .fillEqually
        btn2StackView.alignment = .fill
        btn2StackView.spacing = 10
        
        //Create 3. row
        let addPad3Btn = colorButton(withColor: UIColor.black, title: "Add pad")
        let remPad3Btn = colorButton(withColor: UIColor.black, title: "Remove pad")
        let set3StackView = UIStackView(arrangedSubviews: [addPad3Btn,remPad3Btn])
        set3StackView.axis = .vertical
        set3StackView.distribution = .fillEqually
        set3StackView.alignment = .fill
        set3StackView.spacing = 10
        
        let btn3StackView = UIStackView(arrangedSubviews: [buttonArray3[0],buttonArray3[1],buttonArray3[2],buttonArray3[3],set3StackView])
        btn3StackView.axis = .horizontal
        btn3StackView.distribution = .fillEqually
        btn3StackView.alignment = .fill
        btn3StackView.spacing = 10
        
        //Create 4. row
        let addPad4Btn = colorButton(withColor: UIColor.black, title: "Add pad")
        let remPad4Btn = colorButton(withColor: UIColor.black, title: "Remove pad")
        let set4StackView = UIStackView(arrangedSubviews: [addPad4Btn,remPad4Btn])
        set4StackView.axis = .vertical
        set4StackView.distribution = .fillEqually
        set4StackView.alignment = .fill
        set4StackView.spacing = 10
        
        btn4StackView = UIStackView(arrangedSubviews: [buttonArray4[0],buttonArray4[1],buttonArray4[2],buttonArray4[3],set4StackView])
        btn4StackView.axis = .horizontal
        btn4StackView.distribution = .fillEqually
        btn4StackView.alignment = .fill
        btn4StackView.spacing = 10
        
        // Create 5. row (Add and remove row settings)
        let addRowBtn = colorButton(withColor: UIColor.black, title: "Add row")
        let remRowBtn = colorButton(withColor: UIColor.black, title: "Remove row")
        setRowStackView = UIStackView(arrangedSubviews: [addRowBtn,remRowBtn])
        setRowStackView.axis = .horizontal
        setRowStackView.distribution = .fillEqually
        setRowStackView.alignment = .fill
        setRowStackView.spacing = 10
        
        // Arrange all rows vertically
        stackView = UIStackView(arrangedSubviews: [btn1StackView,btn2StackView,btn3StackView,btn4StackView,setRowStackView])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        // Define button handlers
        buttonArray1[0].addTarget(self, action:#selector(button10Handler), for: UIControlEvents.touchUpInside)
        buttonArray1[3].addTarget(self, action:#selector(button14Handler), for: UIControlEvents.touchUpInside)
        addPad1Btn.addTarget(self, action:#selector(addPad1), for: UIControlEvents.touchUpInside)
        remPad1Btn.addTarget(self, action:#selector(remPad1), for: UIControlEvents.touchUpInside)
        addPad2Btn.addTarget(self, action:#selector(addPad2), for: UIControlEvents.touchUpInside)
        remPad2Btn.addTarget(self, action:#selector(remPad2), for: UIControlEvents.touchUpInside)
        addPad3Btn.addTarget(self, action:#selector(addPad3), for: UIControlEvents.touchUpInside)
        remPad3Btn.addTarget(self, action:#selector(remPad3), for: UIControlEvents.touchUpInside)
        addPad4Btn.addTarget(self, action:#selector(addPad4), for: UIControlEvents.touchUpInside)
        remPad4Btn.addTarget(self, action:#selector(remPad4), for: UIControlEvents.touchUpInside)
        addRowBtn.addTarget(self, action:#selector(addRow), for: UIControlEvents.touchUpInside)
        remRowBtn.addTarget(self, action:#selector(remRow), for: UIControlEvents.touchUpInside)
        
        
        // Setup constraits
        let viewsDictionary = ["stackView":stackView]
        let stackView_H = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[stackView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let stackView_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-30-[stackView]-30-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: viewsDictionary)
        view.addConstraints(stackView_H)
        view.addConstraints(stackView_V)
        
        
        // Hide 2-4 buttons of each row
        for i in 1 ... buttonArray1.count-1 {
            self.buttonArray1[i].isHidden = true
            self.buttonArray2[i].isHidden = true
            self.buttonArray3[i].isHidden = true
            self.buttonArray4[i].isHidden = true
        }
        
    }
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        displayKeyboard()
        
    }
    
}

