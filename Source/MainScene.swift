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
        let freehandScene = CCBReader.loadAsScene("FreehandScene")
        let transition = CCDefaultTransition.transitionMoveInWithDirection(.Up, duration: 0.4)
        CCDirector.sharedDirector().replaceScene(freehandScene, withTransition: transition)
    }
    
}
