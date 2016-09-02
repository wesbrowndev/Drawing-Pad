//
//  SettingsLayer.swift
//  DrawPad
//
//  Created by Wes Brown on 2/23/16.
//  Copyright © 2016 Wes Brown. All rights reserved.
//

import Foundation

class SettingsLayer: CCNode {
    weak var redSlider: CCSlider!
    weak var greenSlider: CCSlider!
    weak var blueSlider: CCSlider!
    weak var sizeSlider: CCSlider!
    weak var colorBox: CCNode!
    weak var sizeBox: CCNodeColor!
    
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    
    override func onEnter() {
        sizeSlider.sliderValue = Float(lineWidth / 16.0)
    }
    
    func opacitySliderDidChange(sender: CCSlider) {
        lineColor = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
    }
    
    func sizeSliderDidChange(sender: CCSlider) {
        lineWidth = CGFloat(sizeSlider.sliderValue * 16.0)
        sizeBox.scaleX = sizeSlider.sliderValue * 8.0
        sizeBox.scaleY = sizeSlider.sliderValue * 8.0
    }
    
    func redSliderDidChange(sender: CCSlider) {
        red = CGFloat((redSlider.sliderValue * 255.0) / 255.0)
        lineColor = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
        colorBox.color = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
    }
    
    func greenSliderDidChange(sender: CCSlider) {
        green = CGFloat((greenSlider.sliderValue * 255.0) / 255.0)
        lineColor = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
        colorBox.color = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
    }
    
    func blueSliderDidChange(sender: CCSlider) {
        blue = CGFloat((blueSlider.sliderValue * 255.0) / 255.0)
        lineColor = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
        colorBox.color = CCColor(red: Float(red), green: Float(green), blue: Float(blue), alpha: 1.0)
    }
    
    func shouldClose() {
        self.removeFromParent()
        userInteraction = true
    }
    
}
