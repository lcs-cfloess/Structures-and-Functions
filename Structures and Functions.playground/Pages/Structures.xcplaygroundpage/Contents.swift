/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Structures
 A structure is a way of defining a custom data type.
 
 Say we want to represent a point on a Cartesian plane.
 
 We could define this using two separate variables:
 
 ![example](example10.png "example")
 
 The downside is that *both* of these pieces of information define the point, but they are declared separately. Keeping track of information this way can lead to bugs and code that is not very readable.
 
 We can use a **structure** to connect the *abscissa* (x-value) and the *ordinate* (y-value) to together define a point:
 
 ![example](example2.png "example")
 
 Try typing the code above to define the structure.
 
*/

// Define the structure here
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}
/*:
 
 Now, use the newly defined structure to create points at (0, 0) and (3, 4):

 ![example](example3.png "example")
 
 These newly created points are called *instances* of the Point structure.
 
 So, a question: what location on a Cartesian plane is a Point initialized with by default?
 
 */

// Create the points here
var start = Point()
var end = Point(x: 3.0, y: 4.0)
/*:
 
 You can query a structure to find the value of a *property* stored within the structure.
 
 Try typing the following:
 
 ![example](example11.png "example")

 You should see that the instance of the Point structure named *start* has it's stored property named *x* set to 0.0.
 
 The instance of the Point structure named *end* has it's stored property named *x* set to 3.0.
 
 What is the value of the stored property named *y* for the *start* instance?
 
 What is the value of the stored property named *y* for the *end* instance?
*/

// Query the points here to find the x and y values separately
start.x
start.y
end.x
end.y

/*:
 ### Refactoring code
 
 The *distance* function defined earlier was not as clean as it could be.
 
 Refactor the function so the header is defined as follows:
 
 ![example](example5.png "example")
 
 You can copy and paste the function from the earlier page.
 
 Then, make modifications so that the function body uses *from.x*, *from.y*, et cetera.
 
 The function would now be invoked as follows:
 
 ![example](example6.png "example")
 
 Test your new function to verify that it works correctly and returns accurate values.
 
 Now consider the new code: which version of the *distance* function is cleaner?
 
 When the function is invoked, which version is more readable?
 
 */

// Re-define the distance function here
func distance(from: Point, to: Point) -> Double{
    return sqrt(pow(from.x - to.x, 2) + pow(from.y - to.y, 2))
}


// Invoke the new function here
distance(from: 0,0 , to: 3,0 )
/*:
 [Next](@next)
 */


