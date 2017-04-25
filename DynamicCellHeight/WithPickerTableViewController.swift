//
//  WithPickerTableViewController.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 4/25/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class WithPickerTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		self.tableView.rowHeight = UITableViewAutomaticDimension
		self.tableView.estimatedRowHeight = 100;
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		if indexPath.section == 0 {
			
			let cell = tableView.dequeueReusableCell(withIdentifier: "myPickerCell", for: indexPath) as! MyPickerTableViewCell

			cell.startEndLabel.text = (indexPath.row == 0 ? "Start" : "End") + " Time"
			
			cell.selectionStyle = UITableViewCellSelectionStyle.none
			
			return cell
			
		}

		let cell = tableView.dequeueReusableCell(withIdentifier: "plainCell", for: indexPath)
		
		cell.textLabel?.text = "s/r \(indexPath)"
		
		return cell
		
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

		if indexPath.section == 0 {
			
			if let cell = tableView.cellForRow(at: indexPath) as? MyPickerTableViewCell {
				
				cell.pickerHeightConstraint.constant = cell.pickerHeightConstraint.constant == 32 ? 240 : 32
				tableView.beginUpdates()
				tableView.endUpdates()
				
			}
			
		}

	}

}
