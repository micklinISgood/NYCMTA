//
//  MTALine.swift
//  MTA
//
//  Created by Mick Lin on 9/2/16.
//  Copyright © 2016 Mick Lin. All rights reserved.
//

import Foundation
class MTALine{
    var name : String?
    var hexcolor: String?
    var letter: String?
    var desc : String?
    init(name : String ,hexcolor: String, letter: String, desc : String){
        self.name = name
        self.hexcolor = hexcolor
        self.letter = letter
        self.desc = desc
    }
    static func getJSON() -> [MTALine]
    {
        var lines = [MTALine]()
        
        //let static variable
        let jsonFile = NSBundle.mainBundle().pathForResource("subway-lister", ofType: "json")
        //wrap string with certain
        let jsonData = NSData(contentsOfFile: jsonFile!)
        
        if let jsonDict = MTALine.parseJSONFromData(jsonData){
            //print(jsonDict)
            if let allLine = jsonDict["lines"]{
                //print(allLine[0])
                //http://stackoverflow.com/questions/25563655/type-anyobject-does-not-conform-to-protocol-sequencetype
                
                for line in allLine as! [AnyObject]{
                    //print(line["name"],line["hexcolor"])
                    //http://www.tutorialspoint.com/swift/swift_initialization.htm
                    //cast optional reading to String
                    let input = MTALine(name: line["name"] as! String , hexcolor:line["hexcolor"]as! String,
                                        letter:line["letter"]as! String, desc: line["desc"]as! String)
                    lines.append(input);
                }
            }

        }
        
        
        return lines
    }
}

extension MTALine{
    //NSData is uncertain ?
    static func parseJSONFromData (jsonData: NSData?) -> [String : AnyObject]?
    {
        if let data = jsonData{
            do {
                let jsonDict = try NSJSONSerialization.JSONObjectWithData(data,
                            options:NSJSONReadingOptions.MutableContainers) as? [String : AnyObject]
                
                return jsonDict
                
            } catch let error as NSError{
                print("JSON parse error:\(error.localizedDescription)")
            }
        
        }
        
        //no data, return nil
        return nil
    }
    
}