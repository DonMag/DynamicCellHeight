//
//  MyPickerTableViewCell.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 4/25/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class MyPickerTableViewCell: UITableViewCell {
	
	@IBOutlet weak var theLabelsContainer: UIView!
	@IBOutlet weak var startEndLabel: UILabel!
	@IBOutlet weak var theTimeLabel: UILabel!
	
	@IBOutlet weak var theDatePicker: UIDatePicker!
	
	@IBOutlet weak var pickerHeightConstraint: NSLayoutConstraint!
	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		
		pickerHeightConstraint.constant = 32
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
		
		theLabelsContainer.backgroundColor = selected ? UIColor.gray : UIColor.clear
		
    }

}
