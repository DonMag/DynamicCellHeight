//
//  DynCollViewTableViewCell.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 4/10/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class CollViewCell: UICollectionViewCell {
	@IBOutlet weak var theLabel: UILabel!
}

class DynCollViewTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

	@IBOutlet weak var theCollectionView: UICollectionView!
	@IBOutlet weak var theCVHeight: NSLayoutConstraint!
	
	var vContentSize: CGSize = CGSize.zero
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
	
	
	// MARK: UICollectionViewDataSource
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		let t = Int(arc4random_uniform(27)) + 3
		return t
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colCell", for: indexPath) as! CollViewCell
		
		let c = UIColor.randomColor()
		cell.backgroundColor = c
		cell.theLabel.textColor = c.isDark ? UIColor.white : UIColor.black
		
		cell.theLabel.text = "\(indexPath.row)"
		
		if collectionView.contentSize != vContentSize {
			vContentSize = collectionView.contentSize
			theCVHeight.constant = vContentSize.height
		}
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 100, height: 60)
	}
	

}
