/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Functions
 ### Functions with no return values
 Functions do not always need to return a value.
 
 Sometimes it is helpful just to *encapsulate* some behaviour inside a function to make code more readable.
 
 Say we want to greet a person. We could define the following function:
 
 ![example](example5.png "example")
 
 Type the code that you see above. Then run the playground to try it out.
 */
// Define the function here
func greet(person: String) {
    print("Hello, \(person)!")
}

// Now greet Sara by invoking the function
greet(person: "Sara")


/*:
 As shown in the screenshot above, the code on lines 1 through 3 **define** the function.
 
 Line 1 is the *function header*.
 
 Line 2 is the *function body* which is everything that is between the opening and closing curly brackets { }.
 
 Line 3 is the closing curly bracket that marks the end of the function.
 
 Line 4 is where the function is *called* or *invoked*.
 
 Add additional lines of code to invoke the function and greet five of your friends in this class.
 
 */
// Invoke the function many more times to greet five friends

/*:
 By encapsulating behaviour of a program inside a function, it is easier to maintain.
 
 Say you are very pleased to see your friend Sara and your other five friends.
 
 *Modify* the behaviour of the function you defined above, so that when invoked, it says:
 
     Hello, Sara! A sincere pleasure to meet you on this very fine day.
 
 Now run your playground again.
 
 Notice how you changed one line of code inside the function body, but, the behaviour is changed for each and every time you use, or invoke, the function.
 */

/*:
 [Next](@next)
 */
