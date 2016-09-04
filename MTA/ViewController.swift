//
//  ViewController.swift
//  MTA
//
//  Created by Mick Lin on 9/2/16.
//  Copyright © 2016 Mick Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    @IBOutlet weak var myTableView: UITableView!
    
    var MTAsys = MTALine.getJSON()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //dynamic tableCellView
        myTableView.estimatedRowHeight = 85.0
        myTableView.rowHeight = UITableViewAutomaticDimension

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MTAsys.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomCell
        cell.setCell(MTAsys[indexPath.row])
            
        return cell
    }

}

