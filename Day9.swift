import UIKit

//Create and Use Closures
// > creating closure expressions allow us the same functionality as a function
//  but directly assigning it to a variable or constant.
// > simple closure with no parameters:
let greeting = {
  print("Hi there!")
}
// > call closures the same as a function by ending its name with closed parenthesis '()'
greeting()

// > Functions and closures both take parameters however, to create a closure that accepts parameters
//  the code must be written within its braces '{}'
// > Example: function
func pay(user: String, amount: Int) {
  // code
}
// > Example: closure with parameters
let payment = { (user: String, amount: Int) in // the 'in' keyword is important to mark the end
  print("Pay: \(user) amount: $\(amount).")  // of the parameter and the start of a closure body
}

payment("Alice", 100)  // no external parameter label is used when calling a closure
            // parameter names only matter when calling a function directly

// > Example: closure with no parameters
let noParameters = { () -> Bool in
  print("No parameters used")
  return true
}

noParameters()

//Why Use Closures?
// > Closures allow programmers to perform functionality and store the outcome in a single variable
// > For example, to run code after...
//  > a delay
//  > an animation
//  > a download has finished
//  > a user has selected an option from a menu
// > Then store the outcome in the same variable



//Trialing Closures and Shorthand Syntax
// > When one function accepts another as its parameter, we can use 'trailing closure syntax.'
//  this allows us to clean up code and make it easier to read
// > When to use 'trailing closure syntax'; everywhere
// > Before:
let captainFirstTeam = team.sorted(by: { name1, name2 in
  if name1 == "suzanne" {
    return true
  } else if name2 == "Suzanne" {
    return false
  }
   
  return name1 < name2
})
// > After: using trailing closure syntax
let captainFirstTeam = team.sorted { name1, name2 in // this allows us to start the closure directly
  if name1 == "suzanne" {             // by remove the '(by:' from the start and closing
    return true                 // parenthesis at the end
  } else if name2 == "Suzanne" {
    return false
  }
   
  return name1 < name2
}
// > Using 'shorthand syntax', we can also remove the parameter names and use '$0' and '$1' in their place
// > After using shorthand syntax
let captainFirstTeam = team.sorted {
  if $0 == "suzanne" {
    return true
  } else if $1 == "Suzanne" {
    return false
  }
   
  return $0 < $1
}
// > If able to shorten code down to a single line, then we can simply start and end the closure on one line
// > For example, if we wanted to perform a reverse sort:
let reverseTeam = team.sorted {
  return $0 > $1
}
// we can move the code to the same line and remove the 'return':
let reverseTeam = team.sorted { $0 > $1 }

// When NOT to use the shorthand syntax:
// 1) The closure code is long
// 2) parameters ($0, $1) are used more than once each
// 3) ode has more than three parameters ($0, $1, $2 ...)



// Accepting Functions as Parameters
// > setting a function as a parameter requires parenthesis '()' syntax and return type

func generateNumber() -> Int { // function to pass into another function
  // code
}

// Set function parameters to accept a function and set return type
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
  // code
}

// call makeArray function and pass in generateNumber function
let newRolls = makeArray(size: 50, using: generateNumber)

// Example function that accepts multiple parameter functions
func example(first: () -> String, second: () -> Int, third: () -> Bool, fourth: () -> Void) {
  first()
  second()
  third()
  fourth()
}

// Passing a closure as parameters within a function
//example:
var makeFromStraw = {
  print("Lets build it out of straw")
}
func buildHouse(using buildingStyle: () -> Void) {
  buildingStyle()
  print("Its='s ready -can anyone blowit down?")
}

buildHouse(using: makeFromStraw)
