//
//  NotSoGoodTableViewController.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 3/29/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class NotSoGoodTableViewController: UITableViewController, NotSoGoodCellDelegate {

	var myArray = [String]()
	
    override func viewDidLoad() {
        super.viewDidLoad()

		self.tableView.rowHeight = UITableViewAutomaticDimension
		self.tableView.estimatedRowHeight = 100; //Set this to any value that works for you.
		
		// create some random data
		for _ in 1...15 {
			
			let n = arc4random_uniform(6) + 4
			var str = ""
			for i in 1..<n {
				str += "Line \(i)\n"
			}
			str += "Line \(n)"
			
			myArray.append(str)
			
		}
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	// MARK: - my cell delegate
	func moreTapped(cell: NotSoGoodDynaTableViewCell) {
		
		// this will "refresh" the row heights, without reloading
		tableView.beginUpdates()
		tableView.endUpdates()
		
		// do anything else you want because the switch was changed
		
	}
	
    // MARK: - Table view data source

	override func numberOfSections(in tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return myArray.count
	}
	
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "notSoGoodCellID", for: indexPath) as! NotSoGoodDynaTableViewCell
		
		// Configure the cell...
		
		let str = myArray[indexPath.row]
		let aTmp = str.components(separatedBy: "\n")
		
		cell.myInit(theTitle: "\(indexPath) with \(aTmp.count) rows", theBody: str)
		
		cell.delegate = self
		
		return cell
	}
	
}
