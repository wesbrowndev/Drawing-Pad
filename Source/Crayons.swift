//
//  Crayons.swift
//  DrawPad
//
//  Created by Wes Brown on 2/23/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

extension FreehandScene {
    func eraser() {
        lineColor = CCColor.whiteColor()
    }
    
    func black() {
        lineColor = CCColor.blackColor()
    }
    
    func gray() {
        lineColor = CCColor.grayColor()
    }
    
    func blue() {
        lineColor = CCColor.blueColor()
    }
    
    func red() {
        lineColor = CCColor.redColor()
    }
    
    func brown() {
        lineColor = CCColor.brownColor()
    }
    
    func green() {
        lineColor = CCColor(red: 0/255, green: 153/255, blue: 0/255, alpha: 1.0)
    }
    
    func orange() {
        lineColor = CCColor.orangeColor()
    }
    
    func lightBlue() {
        lineColor = CCColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0)
    }
    
    func lightGreen() {
        lineColor = CCColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0)
    }
    
    func yellow() {
        lineColor = CCColor.yellowColor()
    }
    
}