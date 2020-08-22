//
//  ViewController.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 22/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class FisrtViewController: UIViewController {

    @IBOutlet weak var LoginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.clientSegue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        super.prepare(for: segue, sender: sender)

        if let secondViewController = segue.destination as? UITabBarController {
            secondViewController.modalPresentationStyle = .fullScreen
        }
    }
    
}

