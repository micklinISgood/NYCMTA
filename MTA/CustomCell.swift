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
        //print("1",self.frame.size.height,line.letter)
        
        self.desc.text = line.desc
        self.desc.numberOfLines = 0
        self.desc.preferredMaxLayoutWidth = self.desc.frame.width
        self.name.text = line.name
        self.name.numberOfLines = 0
        self.name.preferredMaxLayoutWidth = self.name.frame.width


        self.letter.text = line.letter
        self.letter.textColor = UIColor.whiteColor()
        //http://stackoverflow.com/questions/24034300/swift-uilabel-text-alignment
        //self.letter.textAlignment = .Center
        //http://stackoverflow.com/questions/24356888/how-do-i-change-the-font-size-of-a-uilabel-in-swift
        let letterFont : CGFloat = 30.0
        self.letter.font = UIFont.boldSystemFontOfSize(letterFont)
        self.name.font = UIFont.boldSystemFontOfSize(20)
        
        let h = self.desc.frame.size.height + self.name.frame.size.height
      
        self.letter.textAlignment = .Center
        self.letter.backgroundColor = hexColor2rgb(line.hexcolor!)
   
        self.letter.frame.size.height = letterFont*2
        self.letter.frame.size.width = letterFont*2
        //print("3",self.letter.frame.size.height,line.letter)
        //print("4",self.letter.frame.size.width,line.letter)
        self.letter.layer.cornerRadius = self.letter.frame.size.width/2
        self.letter.clipsToBounds = true;
        
        
        
    
        //self.letter.frame = CGRectMake(self.desc.frame.origin.x/2-letterFont/2 , self.frame.size.height/2-letterFont/2, letterFont, letterFont)
        self.circle.frame = CGRectMake(self.desc.frame.origin.x/2-letterFont , h/2-letterFont, letterFont*0, letterFont*0)
        self.circle.backgroundColor = hexColor2rgb(line.hexcolor!)
        //self.circle.frame.size.height = self.circle.frame.size.width
        //https://www.appcoda.com/ios-programming-circular-image-calayer/
        self.circle.layer.cornerRadius = self.circle.frame.size.width/2
        self.circle.clipsToBounds = true
        //print("2",self.desc.frame.size.height)
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
