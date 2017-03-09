//
//  MainTableViewCell.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 3/8/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

protocol MainCellDelegate {
	func switchChanged(sender: UISwitch, cell: MainTableViewCell)
}

class MainTableViewCell: UITableViewCell {
	
	@IBOutlet weak var sizer: NSLayoutConstraint!
	
	var delegate: MainCellDelegate?
	
	var expandedSize: CGFloat = 0.0
	
	@IBAction func didChangeSwitch(_ sender: Any) {
		
		if let t = sender as? UISwitch {
			self.sizer.constant = t.isOn ? self.expandedSize : 0.0
			delegate?.switchChanged(sender: t, cell: self)
		}
		
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
		self.expandedSize = sizer.constant
	}
	
	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		
		// Configure the view for the selected state
	}
	
}
