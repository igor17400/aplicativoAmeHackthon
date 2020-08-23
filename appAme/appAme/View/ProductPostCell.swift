//
//  ProductPostCell.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 23/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class ProductPostCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var descriptionCell: UILabel!
    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var heartButton: UIButton!
    var heartColorConstant = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func heartPressed(_ sender: UIButton) {
        if heartColorConstant == 0 {
            self.heartColorConstant = 1
            self.heartButton.tintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        } else {
            self.heartColorConstant = 0
            self.heartButton.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
}
