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
    @IBOutlet weak var circle: UIView!
    
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
        self.letter.sizeToFit()
        self.letter.textColor = UIColor.whiteColor()
        //http://stackoverflow.com/questions/24034300/swift-uilabel-text-alignment
        self.letter.textAlignment = .Center
        //http://stackoverflow.com/questions/24356888/how-do-i-change-the-font-size-of-a-uilabel-in-swift
        self.letter.font = UIFont.boldSystemFontOfSize(30)
        self.name.font = UIFont.boldSystemFontOfSize(20)
        
        /*
        let x = letter.layer.position.x - (letter.frame.width )
        let y = letter.layer.position.y  - (letter.frame.height)
        let circlePath = UIBezierPath(roundedRect: CGRectMake(x , y , letter.frame.width , letter.frame.width), cornerRadius: 30)
        
        let circleShape = CAShapeLayer()
        circleShape.path = circlePath.CGPath
        circleShape.lineWidth = 0
        let color = hexColor2rgb(line.hexcolor!).CGColor
        circleShape.strokeColor = color
        circleShape.fillColor = color
        
        self.letter.layer.addSublayer(circleShape)
*/
        self.circle.backgroundColor = hexColor2rgb(line.hexcolor!)
        //self.circle.frame = CGRectMake(0 , 0, self.letter.frame.width, self.letter.frame.width)

        //self.circle.frame.size.height = self.circle.frame.size.width
        self.circle.layer.cornerRadius = self.circle.frame.size.width/2
        self.circle.clipsToBounds = true
        //self.letter.layer.borderWidth = 10




    }
    
    func hexColor2rgb(s: String)-> UIColor
    {
        var cString:String = s.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.grayColor()
        }
        
        var rgbValue:UInt32 = 0
        NSScanner(string: cString).scanHexInt(&rgbValue)
        
        let blueV = rgbValue & 0x0000FF
        rgbValue >>= 8
        let greenV = rgbValue & 0x0000FF
        rgbValue >>= 8
        let redV = rgbValue & 0x0000FF
        rgbValue >>= 8
        
        return UIColor(
            red: CGFloat(redV) / 255.0,
            green: CGFloat(greenV) / 255.0,
            blue: CGFloat(blueV) / 255.0,
            alpha: CGFloat(1.0)
        )
        
    
    }
}
