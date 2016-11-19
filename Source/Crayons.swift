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
    
    func blue() {
        lineColor = CCColor.blue()
    }
    
    func purple() {
        lineColor = CCColor.purple()
    }
    
    func red() {
        lineColor = CCColor.red()
    }
    
    func green() {
        //lineColor = CCColor(red: 0/255, green: 153/255, blue: 0/255, alpha: 1.0)
        lineColor = CCColor.green()
    }
    
    func orange() {
        lineColor = CCColor.orange()
    }
    
    func yellow() {
        lineColor = CCColor.yellow()
    }
    
}
