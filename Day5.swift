import UIKit

// Conditions
// check if a condition is true or false
// if someCondition {
//   print("Do something")
// }

// operators:
// ==  equal to
// >  greater than
// >= greater than or equal to
// <  less then
// <=  less than or equal to
// !=  does not equal

// if statement using integers
let score = 85

if score > 80 {
  print("Great job!")
}

// if statements using strings
let ourName = "Bob"
let friendName = "Alice"

if ourName > friendName {
  print("It's \(ourName) vs \(friendName)")
}

if ourName < friendName {
  print("It's \(friendName) vs \(ourName)")
}

// if statement using arrays
var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
  numbers.remove(at: 0)
  print(numbers)
}



// Checking Multiple Conditions
// check for multiple conditions by using if, else statements
// if someCondition {
//   print("Print if true")
// } else {
//   print("Print if false")
// }

// check for even more conditions by using else if statements
// if A {
//   print("Print if A is true")
// } else if B {
//   print("Print if A is false and B is true")
// } else {
//   print("Print if A and B are both false")
// }

// check if multiple conditions are true using AND '&&"
let temp = 25

if temp > 20 && temp < 30 { // will only run if both conditions are true
  print("Its a nice day.")
}

// check if one of two conditions is true using OR '||'
let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
  print("You can buy the game!")
}



// Using Switch Statements
// advantages of using switch statements
// 1) Swift requires switch statements to be exhaustive and must end with a default case.
//  This can help with making sure no cases are missed.
// 2) Faster code. Switch statements only need to read a value once
// 3) Allows for advanced pattern matching

// Using Switch Statements to Check Multiple Conditions
let place = "Metropolis"

switch place {
case "Gotham":
  print("You're Batman!")
case "Mega-City One":
  print("You're Jidge Dredd!")
case "Wakanda":
  print("You're Black Panther!")
case "Metropolis":
  print("You're Superman!")
default:  // use last
  print("Who are you?")
}

// using switch statements with enum variables
enum weather {
  case sun, rain, wind, snow, unknown
}

let forecast = weather.sun

switch forecast {
case .sun:
  print("It should be a nice day.")
case .rain:
  print("Pack an umbrella.")
case .wind:
  print("Wear somthing warm.")
case .snow:
  print("School is cancelled.")
case .unknown:
  print("Our forecast generator is broken!")
}



// Ternary Conditional Operator
// chacks a condition and returns a value based on the condition
let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "Its before noon" : "Its after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)
