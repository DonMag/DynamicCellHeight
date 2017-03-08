//
//  SecondaryTableViewCell.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 3/8/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class SecondaryTableViewCell: UITableViewCell {

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
