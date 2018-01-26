/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function named **shortestDistance** that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 The function header should look like this:
 
  ![example](example1.png "example")
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a new **Line** structure.
 
 Recall that a line is defined by it's *slope* and it's *vertical intercept*. What stored properties would you create for a **Line** structure?
 
 Recall that slope, in turn, is defined by it's *rise* and *run*. Could you create a **Slope** structure? What stored properties might it define?
 
 Recall that the shortest distance from a point to a line is the *perpendicular* distance from that point to the line.
 
 Here is a [complete example showing how to find the shortest distance from a point to a line](http://russellgordon.ca/lcs/shortest-distance-example.pdf), using symbolic algebra.
 
 Your job is to implement a solution in code that carries out the necessary mathematics. The beautiful part of this effort is that, once you've "taught" the computer how to do this correctly, you will never need to do this type of work manually again. 👍🏽😅🎉

*/

// Begin here...
// our line is: y= -1/2x + 9.5
// Our point is: (6|1.5)

//Defining a structure representing a point on a Cartsain plane
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}

// crearing an instant of the poin in our problem
var cabinsite = Point( x: 6, y: 1.5)


// Definig a structure for slope
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

//Defining a structure that repesants a line
struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0)
    var verticalintercept = 0.0
}


// Create an instant of the line in our problem
var slopeOfExistingRoade = Slope(rise: -1, run: 2)
var existingRoade = Line(slope: slopeOfExistingRoade, verticalintercept: 9.5)


/// Returns the slope of a lin Perpendicular to the givin line
///
/// - Parameter givenLine: The line we are staring rom
/// - Returns: The slope of the line that is perpendicular
func getSlopeOfPerpendicularLine(from givenLine: Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

//Get the Perpendicular slope
let perpendicularSlope = getSlopeOfPerpendicularLine(from: existingRoade)


func getVerticalIntercept(from p: Point, onLineWith m: Slope) -> Double {
    // b = y - m * x
    let mAsADecimal = m.rise / m.run
    return p.y - mAsADecimal * p.x
}

let perpendicularLineVerticalIntersept = getVerticalIntercept(from: cabinsite, onLineWith: perpendicularSlope)

//Define equation of the new line
let newRoad = Line (slope: perpendicularSlope, verticalintercept: perpendicularLineVerticalIntersept)




/// /// Gets the Point where tow lines on a Cratensain intersect
///
/// - Parameters:
///   - first: the fist line
///   - second: the second line
/// - Returns: Point of Intersect
func getPointOfIntersect(between first: Line , and second: Line ) -> Point {
    
    //Reminder x = (b1 - b2) / (m2 - m1)
    
    //Get the vertical intercept difference
    let verticalInterceptSum = first.verticalintercept - second.verticalintercept
    
    //Get the slope difference
    let slopeDifference = second.slope.rise / second.slope.run - first.slope.rise / first.slope.run
    
    //Get actual x-value
    let x = verticalInterceptSum / slopeDifference
    
    //Get actual y-value
    // y = m1 * x + b1
    let y = first.slope.rise / first.slope.run * x + first.verticalintercept
    
    //Ruturen actual point of intersect
    return Point(x: x, y: y )
}

let intersectionPoint = getPointOfIntersect(between: existingRoade, and: newRoad)





func distance(from: Point, to: Point) -> Double{
    return sqrt(pow(from.x - to.x, 2) + pow(from.y - to.y, 2))
}

distance(from: cabinsite, to: intersectionPoint)



/// Finds the shortest distance from a given point to a given line. (This is the distance formed from a perpendicular line segment.)
///
/// - Parameters:
///   - providedPoint: a point on a Cartesain plane
///   - providedLine: line
/// - Returns: the shortest distance
func shortestDistance(from providedPoint: Point, to providedLine: Line) -> Double {
    // Get the perpendicular slope (the slope of the new road from the cabin to the existing road)
    let perpendicularSlope = getSlopeOfPerpendicularLine(from: providedLine)
    
    // Get the vertical intercept of the new road
    let perpendicularLineVerticalIntercept = getVerticalIntercept(from: providedPoint, onLineWith: perpendicularSlope)
    
    // Define the equation of the new line (the new road that needs to be built)
    let newLine = Line(slope: perpendicularSlope, verticalintercept: perpendicularLineVerticalIntercept)
    
    // Invoke the function to get the point of intersection
    let pointOfIntersection = getPointOfIntersect(between: providedLine, and: newLine)
    
    // Now actually find the shortest distance
    let shortestDistance = distance(from: providedPoint, to: pointOfIntersection)
    
    // Give back the shortest distance
    return shortestDistance
}


// Create an instance of the point from our problem
var cabinSite = Point(x: 6, y: 1.5)

// Create an instance of the line from our problem
var slopeOfExistingRoad = Slope(rise: -1, run: 2)
var existingRoad = Line(slope: slopeOfExistingRoad, verticalintercept: 9.5)

// Use the overall function
shortestDistance(from: cabinSite, to: existingRoad)

// Make a new line
var slope = Slope(rise: 1, run: 1)
var myLine = Line(slope: slope, verticalintercept: 0)
var myPoint = Point(x: 1, y: 0)

shortestDistance(from: myPoint, to: myLine)
