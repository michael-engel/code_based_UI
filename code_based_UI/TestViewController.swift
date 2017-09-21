//
//  TestViewController.swift
//  code_based_UI
//
//  Created by Michael Engel on 21/09/2017.
//  Copyright © 2017 Michael Engel. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        fixedButtonSetup()
    }
    
    var fixedButton: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //fixedButton setup
    func fixedButtonSetup() {
        fixedButton = UIButton(type: UIButtonType.system)
        fixedButton.setTitle("GO BACK", for: .normal)
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
        let vc = MainViewController()
        self.present(vc, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
