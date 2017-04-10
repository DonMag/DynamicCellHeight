//
//  WithCollViewsTableViewController.swift
//  DynamicCellHeight
//
//  Created by Don Mag on 4/10/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class WithCollViewsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		self.tableView.rowHeight = UITableViewAutomaticDimension
		self.tableView.estimatedRowHeight = 100;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tableView.beginUpdates()
		tableView.endUpdates()

	}
	
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		// use collectionView cell for 3rd row (zero-based, of course)
		if indexPath.row == 2 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "dCell", for: indexPath) as! DynCollViewTableViewCell
			return cell
		}
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "sCell", for: indexPath) as! SimpleTableViewCell
		
		// use random 1 to 4 lines of text
		let nLines = indexPath.row % 3

		var str = "\(indexPath)"
		
		if nLines > 0 {
			for i in 1...nLines {
				str = str + "\nLine \(i)"
			}
		}
		
		cell.theLabel.text = str
			
		return cell
		
	}

}
