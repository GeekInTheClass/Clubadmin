//
//  TaskTableViewController.swift
//  Clubadmin
//
//  Created by cadenzah on 18/04/2019.
//  Copyright © 2019 cadenzah. All rights reserved.
//

// Cocoa Touch classt7y

import UIKit

class TaskTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tasks[6].addOwner("임동진")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 각 셀을 렌더링한다
        let cell = tableView.dequeueReusableCell(withIdentifier: "Task", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = tasks[indexPath.row].taskName
        if (tasks[indexPath.row].taskOwner.count > 1) {
            cell.detailTextLabel?.text = "\(tasks[indexPath.row].taskOwner[0]) 외 \(tasks[indexPath.row].taskOwner.count - 1)명"
        } else {
            cell.detailTextLabel?.text = tasks[indexPath.row].taskOwner[0]
        }
        
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

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destVC = segue.destination as! DetailViewController
        let selectedTask = tasks[self.tableView.indexPathForSelectedRow!.row]
        destVC.TaskForView = selectedTask
    }


}
