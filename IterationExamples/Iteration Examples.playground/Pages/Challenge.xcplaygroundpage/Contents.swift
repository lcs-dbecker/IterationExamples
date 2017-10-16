//: [Previous](@previous)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 600, height: 600)

//Defaults
canvas.defaultLineWidth = 1

// Below this line, try combining a loop and four statements that draw lines to generate the goal

// change horizonal position
for x in stride(from: 50, through: 550, by: 100){
    
    // change vertical position
   for y in stride(from: 50, through: 550, by: 100){
    
    // change size and saturation
        for d in stride(from: 100, through: 20, by: -20){
        var v = random(from: 0, toButNotIncluding: 80)
            
            // color for circles
            canvas.fillColor = Color.init(hue: v, saturation: 100, brightness:
                100, alpha: 100)
            
            // color for borders of circes
            canvas.borderColor = Color.init(hue: v, saturation: 100, brightness: 100, alpha: 100)

            // draw cirlces
            canvas.drawEllipse(centreX: x, centreY: y, width: d, height: d)
            
            
        }
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
