//
//  ItemTableViewCell.swift
//  Shopping List
//
//  Created by Folajimi  on 08/07/2020.
//  Copyright © 2020 Folajimi Babasola. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    var name = ""
    var prices: [String: Double] = [:]

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
