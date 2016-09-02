//
//  DrawCanvas.swift
//  DrawPad
//
//  Created by Wes Brown on 2/23/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

import Foundation

public var lineColor: CCColor?
public var lineWidth: CGFloat = 2.0
public var userInteraction = true

class DrawCanvas: CCDrawNode {
    
    override init!() {
        super.init()
        
        userInteractionEnabled = true
        lineColor = CCColor.blackColor()
    }

    override func touchBegan(touch: UITouch!, withEvent event: UIEvent!) {
        if userInteraction == true {
            drawDot(touch.locationInNode(self), radius: lineWidth, color: lineColor)
        }
    }
    
    override func touchMoved(touch: UITouch!, withEvent event: UIEvent) {
        if userInteraction == true {
            let prevLocationInView = touch.previousLocationInView(touch.view)
            let prevLocationInWorld = CCDirector.sharedDirector().convertToGL(prevLocationInView)
            let prevoiusLocation = self.convertToNodeSpace(prevLocationInWorld)
            drawSegmentFrom(prevoiusLocation, to: touch.locationInNode(self), radius: lineWidth, color: lineColor)
        }
    }

}