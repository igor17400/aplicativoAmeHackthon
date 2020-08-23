//
//  RegisterSalesmanController.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 23/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class RegisterSalesmanController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
               let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
               view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.secondRegisterSalesman, sender: self)
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true){
            print("Dismissing...")
        }
    }
}
