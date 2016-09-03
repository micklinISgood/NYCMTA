//
//  CustomCell.swift
//  MTA
//
//  Created by Mick Lin on 9/3/16.
//  Copyright © 2016 Mick Lin. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var letter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setCell(line : MTALine){
        self.desc.text = line.desc
        self.name.text = line.name
        self.letter.text = line.letter
    }
}
