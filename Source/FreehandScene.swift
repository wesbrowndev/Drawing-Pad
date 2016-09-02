//
//  MainScene.swift
//  DrawPad
//
//  Created by Wes Brown on 2/23/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

import Foundation
import PhotosUI

class FreehandScene: CCNode {
    weak var resetButton: CCButton!
    weak var saveButton: CCButton!
    weak var settingsButton: CCButton!
    weak var blackCrayon: CCButton!
    weak var grayCrayon: CCButton!
    weak var brownCrayon: CCButton!
    weak var redCrayon: CCButton!
    weak var blueCrayon: CCButton!
    weak var greenCrayon: CCButton!
    weak var orangeCrayon: CCButton!
    weak var lightBlueCrayon: CCButton!
    weak var lightGreenCrayon: CCButton!
    weak var yellowCrayon: CCButton!
    weak var eraserButton: CCButton!
    
    func reset() {
        let freehandScene = CCBReader.loadAsScene("FreehandScene")
        CCDirector.sharedDirector().presentScene(freehandScene)
    }
    
    func showSettings() {
        let settingsLayer = CCBReader.load("SettingsLayer") as! SettingsLayer
        self.parent!.addChild(settingsLayer)
        userInteraction = false
        self.visible = true
        
    }
    
    func save() {
        let authStatus = PHPhotoLibrary.authorizationStatus()
        
        if authStatus == .Denied || authStatus == .Restricted {
            showPhotosDeniedAlert()
            return
        } else {
            buttonsHidden()
            
            let scene: CCScene = CCDirector.sharedDirector().runningScene
            let n: CCNode = scene.children[0] as! CCNode
            let img: UIImage = self.screenshotWithStartNode(n)
        
            UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
            
            if authStatus == .Authorized {
                buttonsVisible()
                savedToAlbum()
            }
        }
    }
    
    func screenshotWithStartNode(startNode: CCNode) -> UIImage {
        CCDirector.sharedDirector().nextDeltaTimeZero = true
        let winSize: CGSize = CCDirector.sharedDirector().viewSize()
        let rtx: CCRenderTexture = CCRenderTexture(width: Int32(winSize.width), height: Int32(winSize.height))
        rtx.begin()
        startNode.visit()
        rtx.end()
        return rtx.getUIImage()
    }
    
    func showPhotosDeniedAlert() {
        let alert = UIAlertController(title: "Photo Access Disabled", message: "Please enable access to Photo Gallery in Settings/Privacy.", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        CCDirector.sharedDirector().presentViewController(alert, animated: true, completion: nil)
    }
    
    func savedToAlbum() {
        let alert = UIAlertController(title: "Saved to Photo Album", message: nil, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        CCDirector.sharedDirector().presentViewController(alert, animated: true, completion: nil)
    }
    
    func shouldClose() {
        let mainScene = CCBReader.loadAsScene("MainScene")
        let transition = CCDefaultTransition.transitionFadeWithDuration(0.5)
        CCDirector.sharedDirector().presentScene(mainScene, withTransition: transition)
    }
    
    func buttonsHidden() {
        resetButton.visible = false
        saveButton.visible = false
        settingsButton.visible = false
        blackCrayon.visible = false
        grayCrayon.visible = false
        brownCrayon.visible = false
        redCrayon.visible = false
        blueCrayon.visible = false
        greenCrayon.visible = false
        orangeCrayon.visible = false
        lightBlueCrayon.visible = false
        lightGreenCrayon.visible = false
        yellowCrayon.visible = false
        eraserButton.visible = false
    }
    
    func buttonsVisible() {
        resetButton.visible = true
        saveButton.visible = true
        settingsButton.visible = true
        blackCrayon.visible = true
        grayCrayon.visible = true
        brownCrayon.visible = true
        redCrayon.visible = true
        blueCrayon.visible = true
        greenCrayon.visible = true
        orangeCrayon.visible = true
        lightBlueCrayon.visible = true
        lightGreenCrayon.visible = true
        yellowCrayon.visible = true
        eraserButton.visible = true
    }
    
}