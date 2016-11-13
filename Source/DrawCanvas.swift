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
        
        isUserInteractionEnabled = true
        lineColor = CCColor.black()
    }

    override func touchBegan(_ touch: UITouch!, with event: UIEvent!) {
        if userInteraction == true {
            drawDot(touch.location(in: self), radius: lineWidth, color: lineColor)
        }
    }
    
    override func touchMoved(_ touch: UITouch!, with event: UIEvent) {
        if userInteraction == true {
            let prevLocationInView = touch.previousLocation(in: touch.view)
            let prevLocationInWorld = CCDirector.shared().convert(toGL: prevLocationInView)
            let previousLocation = self.convert(toNodeSpace: prevLocationInWorld)
            drawSegment(from: previousLocation, to: touch.location(in: self), radius: lineWidth, color: lineColor)
        }
    }

}
