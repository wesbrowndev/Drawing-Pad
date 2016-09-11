//
//  Crayons.swift
//  DrawPad
//
//  Created by Wes Brown on 2/23/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

extension FreehandScene {
    func eraser() {
        lineColor = CCColor.white()
    }
    
    func black() {
        lineColor = CCColor.black()
    }
    
    func gray() {
        lineColor = CCColor.gray()
    }
    
    func blue() {
        lineColor = CCColor.blue()
    }
    
    func red() {
        lineColor = CCColor.red()
    }
    
    func brown() {
        lineColor = CCColor.brown()
    }
    
    func green() {
        lineColor = CCColor(red: 0/255, green: 153/255, blue: 0/255, alpha: 1.0)
    }
    
    func orange() {
        lineColor = CCColor.orange()
    }
    
    func lightBlue() {
        lineColor = CCColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0)
    }
    
    func lightGreen() {
        lineColor = CCColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0)
    }
    
    func yellow() {
        lineColor = CCColor.yellow()
    }
    
}
