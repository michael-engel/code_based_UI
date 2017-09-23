//
//  TestViewController.swift
//  code_based_UI
//
//  Created by Michael Engel on 21/09/2017.
//  Copyright © 2017 Michael Engel. All rights reserved.
//

 
import UIKit

class ButtonWoAutoViewController: UIViewController {

    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        fixedButtonSetup()
        fixedButton1Setup()
        fixedButton2Setup()
        //setupCollectionView()
    }
    
    var fixedButton: UIButton!
    var fixedButton1: UIButton!
    var fixedButton2: UIButton!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    // Initializing a collection view and adding it to the view
//    func setupCollectionView() {
//        let layout = UICollectionViewLayout()
//        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
//        view.addSubview(collectionView)
//        collectionView.backgroundColor = UIColor.green
//        
//    }
    
 
    
    
    //fixedButton setup
    func fixedButtonSetup() {
        fixedButton = UIButton(type: UIButtonType.system)
        fixedButton.setTitle("Add options", for: .normal)
        fixedButton.bounds = CGRect(x: 0, y: 0, width: 300, height: 80)
        fixedButton.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.25)
        fixedButton.backgroundColor = UIColor.black
        fixedButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        fixedButton.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        fixedButton.addTarget(self, action:#selector(fixedButtonHandler), for: UIControlEvents.touchUpInside)
        // Make the button visible
        view.addSubview(fixedButton)
    }
    
    //fixedButton handler
    func fixedButtonHandler(sender: UIButton) {
        // Make the button visible
        view.addSubview(fixedButton1)
        view.addSubview(fixedButton2)
    }
    
    //fixedButton1 setup
    func fixedButton1Setup() {
        fixedButton1 = UIButton(type: UIButtonType.system)
        fixedButton1.setTitle("GO BACK", for: .normal)
        fixedButton1.bounds = CGRect(x: 0, y: 0, width: 300, height: 80)
        fixedButton1.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.5)
        fixedButton1.backgroundColor = UIColor.black
        fixedButton1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        fixedButton1.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        fixedButton1.addTarget(self, action:#selector(fixedButton1Handler), for: UIControlEvents.touchUpInside)
    }
    
    //fixedButton handler
    func fixedButton1Handler(sender: UIButton) {
        let vc = MainViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    //fixedButton2 setup
    func fixedButton2Setup() {
        fixedButton2 = UIButton(type: UIButtonType.system)
        fixedButton2.setTitle("GO TO StackView", for: .normal)
        fixedButton2.bounds = CGRect(x: 0, y: 0, width: 300, height: 80)
        fixedButton2.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height*0.75)
        fixedButton2.backgroundColor = UIColor.black
        fixedButton2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // e.g. for italic type italicSystemFont
        fixedButton2.setTitleColor(UIColor.white, for: .normal)
        // Specify event and following handler func
        fixedButton2.addTarget(self, action:#selector(fixedButton2Handler), for: UIControlEvents.touchUpInside)
    }
    
    //fixedButton handler
    func fixedButton2Handler(sender: UIButton) {
        let vc = StackViewTestViewController()
        self.present(vc, animated: true, completion: nil)
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 



//extension TestViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    // Specifying the number of sections in the collection view
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//    // Specifying the number of cell in the given section
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//}
 
  */
