//
//  ActivitiesTableViewController.swift
//  imin
//
//  Created by Alexey Blinov on 13/06/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import UIKit
import AFDateHelper_icanzilb_

class ActivitiesTableViewController: UITableViewController
{
    let jamie = User(id: "1", name: "Jamie", email: "hijameshughes@gmail.com")
    let alexey = User(id: "2", name: "Alexey", email: "alexey.blinov@gmail.com")
    
    private var activities: [Activity] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.activities = [
            Activity(name: "Eating dinner", host: jamie, location: Location(name: "Jamie's house", lat: 0.0, lon: 0.0), date: NSDate(timeInterval: 60 * 60 * 24 * 3, sinceDate: NSDate())),
            Activity(name: "Drinking tasty craft beer", host: alexey, location: Location(name: "Meantime brewery", lat: 0.0, lon: 0.0), date: NSDate())]
    }
    
    var todayActivities: [Activity] {
        get {
            return [self.activities[0]]
//            return filter(self.activities, { (a: Activity) -> Bool in
//                a.date.isToday()
//            })
        }
    }
    
    var futureActivities: [Activity] {
        get {
            return filter(self.activities, { (a: Activity) -> Bool in
                !contains(self.todayActivities, a)
            })
        }
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? self.todayActivities.count : self.futureActivities.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("activityTableCell", forIndexPath: indexPath) as! ActivityTableViewCell

        cell.activity = indexPath.section == 0 ? self.todayActivities[indexPath.row] : self.futureActivities[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
