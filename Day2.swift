import UIKit

// Booleans
// boolean data types store either true or false data

// set boolean values
let goodDogs = true
let gameOver = false

// return boolean values from a function based on data set within a constant or variable
let filename = "myFile.jpg"
print(filename.hasSuffix(".jpg"))  // will return boolean: true
print(filename.hasSuffix(".php"))  // will return boolean: false


// Boolean Operators
// switch boolean values from false to true using the '!' operator
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated) // returns true

// '.toggle()' also switches a variable boolean
isAuthenticated = false
isAuthenticated.toggle()
print(isAuthenticated) // returns true



// String Interpolation
// using string interpolation, we can join two separate strings together to form one complete string

// method 1: using the '+' operator to combine two strings
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting) // returns "Hello, world!"

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric) // returns "Haters gonna hate"

// '+' does not allow the user to combine an int and str
//let money = 25
//let name = "Bob"
// let message = name + " has " + money + " in the bank." Error: Cannot convert value of type 'Int' to expected argument type 'String'

// method 2: using string interpolation '\'
// using a backslash '\' before a var or const within your string to combine
// more efficient than using '+' operator, allows for combining int and str
let name = "Alice"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
