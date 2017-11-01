import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    
    var x : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // take off borders
        //        canvas.drawShapesWithBorders = false
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        print(x)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
        //           change color and add new moving ball.
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 100, width: 50, height: 50)
        
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: 500-x, centreY: 170, width: 50, height: 50)
      
        
    }
    
}

