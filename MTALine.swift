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
        self.desc = desc
        self.hexcolor = hexcolor
        self.letter = letter
    }
    static func getJSON() -> [MTALine]
    {
        var lines = [MTALine]()
        
        //let static variable
        let jsonFile = NSBundle.mainBundle().pathForResource("subway-lister", ofType: "json")
        //wrap string with certain
        let jsonData = NSData(contentsOfFile: jsonFile!)
        
        if let jsonDict = MTALine.parseJSONFromData(jsonData){
            print(jsonDict)
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