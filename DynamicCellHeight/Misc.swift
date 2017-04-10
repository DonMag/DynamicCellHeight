//
//  Misc.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 4/10/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

extension UIColor {
	
	class func randomColor() -> UIColor {
		
		let r = CGFloat(arc4random_uniform(255)) / 255.0
		let g = CGFloat(arc4random_uniform(255)) / 255.0
		let b = CGFloat(arc4random_uniform(255)) / 255.0
		
		return UIColor(red: r, green: g, blue: b, alpha: 1.0)
	}
	
	var isDark: Bool {
		var white: CGFloat = 0
		getWhite(&white, alpha: nil)
		return white < 0.5
	}

}
