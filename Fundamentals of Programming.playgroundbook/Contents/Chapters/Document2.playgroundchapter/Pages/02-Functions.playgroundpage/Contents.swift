/*:
 [Previous](@previous)
 
 **Goal:** Learn to group useful code into functions

 Functions are a handy way to group code that we might want to use frequently.
 
 Can you name a few functions we've used already?

 Here's a handy function if we find ourselves wanting thinner than usual lines.
*/

//#-hidden-code
import PlaygroundSupport
import UIKit
let turtle = Turtle(name: "Waffles", avatar: "🐒")
func forward(_ distance:Int) {
    turtle.forward(distance: Float(distance))
}

func backward(_ distance:Int) {
    turtle.backward(distance: Float(distance))
}

func right(_ degrees:Int) {
    turtle.right(turnDegrees: Float(degrees))
}

func left(_ degrees:Int) {
    turtle.left(turnDegrees: Float(degrees))
}

func setColor(_ color:UIColor) {
    turtle.setColor(color)
}

func penUp() {
    turtle.penUp()
}

func penDown() {
    turtle.penDown()
}
func home() {
    turtle.home()
}

func setPenSize(_ penSize: Int) {
    turtle.setPenSize(penSize:Float(penSize))
}

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor())
//#-code-completion(literal, show, color)
//#-end-hidden-code
func drawThinLine() {
    // Set our pen size to super-thin before drawing the line
    setPenSize(1)
    forward(50)
}

/*:
 Finish the implementation of the function `drawSquare()` so that our
turtle will draw a square with sides 50 steps long.
 
Start by deleting the '//'s before the code below to un-[comment](glossary://comment)
our function definition.
*/
//#-editable-code
func drawSquare() {
    //for num in 1...4 {
        // Write some code here
    //}
}
//#-end-editable-code

/*:
 What do we need to do to draw a square with our turtle?
 How do we call our newly finished `drawSquare()` function?
 */
//#-code-completion(identifier, show, drawSquare())
//#-editable-code Tap to enter code
//#-end-editable-code

/*:
 Now we can use this `drawSquare()` function here instead of having to re-write this code every time we want to draw a square.
 */
//#-hidden-code
let vc = TurtleViewController()
// : We can even set the speed at which our turtle draws our commands...
vc.setSpeed(Speed.normal)
// And then add our turtle to that view controller.
vc.addTurtle(turtle)
vc.hideDegreesHelper()
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
/*:
 [Next](@next)
 */
