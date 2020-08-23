//
//  SalesManViewController.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 23/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class SalesManViewController: UIViewController {
    
    let transiton = SlideInTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func backMainButtonPressed(_ sender: UIButton) {
        dismiss(animated: true){
            print("Dismissing")
        }
    }
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(identifier: K.menuViewController) else { return }
               menuViewController.modalPresentationStyle = .overCurrentContext
               menuViewController.transitioningDelegate = self
               present(menuViewController, animated: true)
    }
    
}

extension SalesManViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = true
        return transiton
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = false
        return transiton
    }
}

