//
//  MenuViewController.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 22/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case vender
    case comprar
    case pagar
    case servicos
    case doacoes
    case convidar
}

class MenuViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func
        tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        
        dismiss(animated: true){
            print("Dismissing: \(menuType)")
        }
    }
}
