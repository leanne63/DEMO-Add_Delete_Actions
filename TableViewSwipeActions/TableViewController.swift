//
//  TableViewController.swift
//  TableViewSwipeActions
//
//  Created by leanne on 4/27/20.
//

import UIKit

// alternatively, 
// class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
class TableViewController: UITableViewController {
	
	let cellReuseIdentifier = "ReusableTableCell"
	var tableData = [
		(title:"Example Title 1", subtitle: "Example Subtitle 1"),
		(title:"Example Title 2", subtitle: "Example Subtitle 2"),
		(title:"Example Title 3", subtitle: "Example Subtitle 3"),
		(title:"Example Title 4", subtitle: "Example Subtitle 4"),
		(title:"Example Title 5", subtitle: "Example Subtitle 5"),
	]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tableData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
		let row = indexPath.row
		
		cell.textLabel?.text = tableData[row].title
		cell.detailTextLabel?.text = tableData[row].subtitle
		
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
	
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

}
