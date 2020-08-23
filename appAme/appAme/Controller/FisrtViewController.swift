//
//  ViewController.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 22/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit
import CLTypingLabel

class FisrtViewController: UIViewController {

    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var appName: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        appName.text = K.appTitle
        appName.charInterval = 0.06
    }

    @IBAction func LoginButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.clientSegue, sender: self)
    }
    
    @IBAction func RegisterSalesmanPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.salesmanSegue, sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        super.prepare(for: segue, sender: sender)

        if let secondViewController = segue.destination as? UITabBarController {
            secondViewController.modalPresentationStyle = .fullScreen
        }
        
        if let salesManViewController = segue.destination as? UINavigationController {
            salesManViewController.modalPresentationStyle = .fullScreen
        }
    }
    
}

