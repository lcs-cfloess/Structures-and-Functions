/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Functions
 ### Functions with a return value
 Functions sometimes return a value, often the result of a calculation of some kind.
 
 Say we want to calculate the distance between two points.
 
 One way we could do this is by defining the following function:
 
 ![example](example2.png "example")
 
 Type the code that you see above. Then run the playground to try it out.
 */
// Define the function here
func distance(fromX: Double, fromY: Double, toX: Double, toY: Double) -> Double {
    return sqrt(pow(fromX - toX, 2) + pow(fromY - toY, 2))
}
// Now invoke the function to calculate the distance between (0, 0) and (3, 4)
// NOTE: Before you run the code, make a prediction about the distance between these two points.
distance(fromX: 0, fromY: 0, toX: 3, toY: 4)
/*:
 ### Documenting functions
 When we start to add behaviour to our programs using functions, it's important to document how each function works.
 
 This makes it easier for us to know how to use the function in the future.
 
 It also makes it easier for programmers who did not write the function to understand how to use it.
 
 Hold down the **Option** key on your keyboard, then click the *function name* for the **distance** function that you defined above.
 
 You should see something like the following:
 
 ![No documentation](example3.png "A function with no documentation")
 
 As you can see, there is very little useful information about **what** the function does, or **how** to use it.
 
 We can fix that. Use the mouse to highlight the function header. Then select this menu sequence:
 
 ![Add documentation](example4.png "Adding documentation")
 
 You will see the following "skeleton" comment added above the function header:
 
 ![Skeleton comment](example7.png "Skeleton comment")
 
 Fill in the comment so it looks like this:
 
 ![Completed comment](example9.png "Completed comment")
 
 Now hold down the **Option** key on your keyboard, then click the *function name* for the **distance** function again.
 
 What is different? Is there any ambiguity about what the function does now? Or how to use the function?
 
 Documenting functions in this manner is an important part of writing *human readable* code (see learning goal 8 on the Software Development tab of your Computer Science portfolio):
 
 ![Learning goal](example8.png "Learning goal covering human-readable code")
 
 
 */
/*:
 [Next](@next)
 */

