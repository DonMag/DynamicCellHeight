//
//  SimpleTableViewCell.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 4/10/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {

	
	@IBOutlet weak var theLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
