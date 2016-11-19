//
//  AboutScene.swift
//  ArtPad
//
//  Created by Wes Brown on 11/18/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

import Foundation

class AboutScene: CCNode {
    
    func returnTo() {
        let freehandScene = CCBReader.load(asScene: "MainScene")
        let transition = CCDefaultTransition.transitionMoveIn(with: .up, duration: 0.4)
        CCDirector.shared().replace(freehandScene, with: transition)
    }
}
