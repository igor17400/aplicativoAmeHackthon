//
//  InterestsViewController.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 23/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class InterestsViewController: UIViewController {
    @IBOutlet weak var navigation: UINavigationItem!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
               let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
               view.addGestureRecognizer(tap)
    }
    @IBAction func button1Pressed(_ sender: UIButton) {
        button1.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        button2.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        button3.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        button4.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    @IBAction func button5Pressed(_ sender: Any) {
        button5.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    @IBAction func continuarPressed(_ sender: UIButton) {
    }
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}
