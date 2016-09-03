//
//  ViewController.swift
//  MTA
//
//  Created by Mick Lin on 9/2/16.
//  Copyright © 2016 Mick Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate
{
    @IBOutlet weak var table: UITableView!
    let basicCellIdentifier = "BasicCell"
    var items = ["admksalmdlsamdlsamdlkasmdlasmdlsamdlksamdlkasmdlkasmdlksamdklasmdlkasmdlkasmdlkasmdcjkndscnksndcdkcnksdjcnksdnckjsdncsdnjkanckjanckjsnckjasncjkasnckjasncjkasnckdslnjcvlkjdncjsnjkasncjkasncjkasnckjasncjkasnckjsanckjsanckjasncjksancjksancjksancjkasncjasncjkasncklas;NKCNDJKVALNVJKSDANCKSCNJSNCJKSDCNKJSDNCKJANCDKNLSACNJDKCNJKNCAKJNACJKNKJANCKJSNC","badmksalmdlsamdlsamdlkasmdlasmdlsamdlksamdlkasmdlkasmdlksamdklasmdlkasmdlkasmdlkasmdcjkndscnksndcdkcnksdjcnksdnckjsdncsdnjkanckjanckjsnckjasncjkasnckjasncjkasnckdslnjcvlkjdncjsnjkasncjkasncjkasnckjasncjkasnckjsanckjsanckjasncjksancjksancjksancjkasncjasncjkasncklas;NKCNDJKVALNVJKSDANCKSCNJSNCJKSDCNKJSDNCKJANCDKNLSACNJDKCNJKNCAKJNACJKNKJANCKJSNC", "cadmksalmdlsamdlsamdlkasmdlasmdlsamdlksamdlkasmdlkasmdlksamdklasmdlkasmdlkasmdlkasmdcjkndscnksndcdkcnksdjcnksdnckjsdncsdnjkanckjanckjsnckjasncjkasnckjasncjkasnckdslnjcvlkjdncjsnjkasncjkasncjkasnckjasncjkasnckjsanckjsanckjasncjksancjksancjksancjkasncjasncjkasncklas;NKCNDJKVALNVJKSDANCKSCNJSNCJKSDCNKJSDNCKJANCDKNLSACNJDKCNJKNCAKJNACJKNKJANCKJSNCSDNSAJKDNAKLSMDLAKSDMKLASMDLKASMDLKASMDLKASMDLKASMDLKASMDLKASMDLKASMDLKASMDLKASMLAKSMDLASMDLAKSMDLKASMDLKASMDLKASMLKADSMLKASMDLKASMDLKMadmksalmdlsamdlsamdlkasmdlasmdlsamdlksamdlkasmdlkasmdlksamdklasmdlkasmdlkasmdlkasmdcjkndscnksndcdkcnksdjcnksdnckjsdncsdnjkanckjanckjsnckjasncjkasnckjasncjkasnckdslnjcvlkjdncjsnjkasncjkasncjkasnckjasncjkasnckjsanckjsanckjasncjksancjksancjksancjkasncjasncjkasncklas;NKCNDJKVALNVJKSDANCKSCNJSNCJKSDCNKJSDNCKJANCDKNLSACNJDKCNJKNCAKJNACJKNKJANCKJSNCishan","cool1"]
    func configureTableView() {
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 160.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { let cell = tableView.dequeueReusableCellWithIdentifier(basicCellIdentifier) as BasicCell
        cell.titleLabel.text = items[indexPath.row]
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

