//
//  SampleTableViewController.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 3/8/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class SampleTableViewController: UITableViewController, MainCellDelegate {

	let masterCellRow:Int = 3
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.tableView.rowHeight = UITableViewAutomaticDimension
		self.tableView.estimatedRowHeight = 100; //Set this to any value that works for you.
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	// MARK: - MainCellDelegate functions
	
	func switchChanged(sender: UISwitch, cell: MainTableViewCell) {
		
		// this will "refresh" the row heights, without reloading
		tableView.beginUpdates()
		tableView.endUpdates()
		
		// do anything else you want because the switch was changed
		
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 15
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		if indexPath.row == masterCellRow {
			
			let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainTableViewCell
			
			cell.selectionStyle = UITableViewCellSelectionStyle.none
			
			cell.delegate = self

			// un-comment the following to remove the "dev colors"
//			cell.contentView.backgroundColor = UIColor.clear
//			for v in cell.contentView.subviews {
//				v.backgroundColor = UIColor.clear
//			}
			
			return cell
			
		}
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "SecondaryCell", for: indexPath) as! SecondaryTableViewCell
		
		switch indexPath.row % 4 {
		case 1:
			cell.theLabel?.text = "IndexPath for this row: \(indexPath)\nWith a Second Line"
			break
		case 2:
			cell.theLabel?.text = "IndexPath for this row: \(indexPath)\nWith a Second Line\nand a Third Line"
			break
		case 3:
			cell.theLabel?.text = "IndexPath for this row: \(indexPath)\nWith a Second Line that is long enough to wrap onto one or two more lines, just to show that the cells / rows are, in fact, auto-sizing themselves."
			break
		default:
			cell.theLabel?.text = "IndexPath for this row: \(indexPath)"
			break
		}
		
		cell.selectionStyle = UITableViewCellSelectionStyle.none
		
		return cell
		
	}
	
}
