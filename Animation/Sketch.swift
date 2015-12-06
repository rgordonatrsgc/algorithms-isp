//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch {

    // Do not remove or rename these properties
    let canvas : Canvas
    let framesPerSecond : Int = 60
    var frameCount = 0
    
    // Declare any properties you need for your sketch here
    var x = 0
    var s = 1

    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 700, height: 100)
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        
        // Keep track of how many frames have been drawn
        frameCount++
        
        // Add any code for your sketch below...
        
        // Horizontal position of circle
        x = x + s
        
        // Bounce when hitting wall
        if (x > 480 || x < 0) {
            s *= -1
        }
        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw a circle that moves across the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: Float(frameCount), saturation: 80, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: 135, width: 25, height: 25)
        
    }
    
}