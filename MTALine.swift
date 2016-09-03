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
}