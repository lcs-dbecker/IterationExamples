//: [Previous](@previous) / [Next](@next)

import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 400)

//Make a loop to draw 10 rectangles with increasing brightness.


for i in stride(from: 0, through: 500, by: 50){

    i

    
 //Change colour
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: i/5, alpha: 100)
    
//Draw rectangle
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: i, width: canvas.width, height: 50)

}

// Show the result
PlaygroundPage.current.liveView = canvas.imageView
