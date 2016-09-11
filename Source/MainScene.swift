//
//  MainScene.swift
//  MyPad
//
//  Created by Wes Brown on 4/10/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

import Foundation

class MainScene: CCScene {
    
    func freehand() {
        let freehandScene = CCBReader.load(asScene: "FreehandScene")
        let transition = CCDefaultTransition.transitionMoveIn(with: .up, duration: 0.4)
        CCDirector.shared().replace(freehandScene, with: transition)
    }
    
}
