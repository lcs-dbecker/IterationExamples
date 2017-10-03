//: [Previous](@previous) / [Next](@next)

import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 360, height: 100)

//Make a loop to draw 10 rectangles with increasing brightness.

canvas.drawShapesWithBorders = false


for i in stride(from: 0, through: 360, by: 1){

    i

    
 //Change colour
    canvas.fillColor = Color(hue: i, saturation: 100, brightness: 100, alpha: 100)
    
//Draw rectangle
canvas.drawRectangle(bottomLeftX: i, bottomLeftY: 0, width: 1, height: 100)

}

// Show the result
PlaygroundPage.current.liveView = canvas.imageView
