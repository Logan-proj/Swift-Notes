import UIKit

// Variables and Constants
// variables allow us to store and change information within our code
// var ; sets variables and can be changed later in the code
var greeting = "Hello, playground"
print(greeting)

// when changing a variable, you do not have to use 'var' again. Only when first setting a new variable
greeting = "Hello world"
print(greeting)


// 'let' is used to set constants
let name = "Bob"

// constants cannot be changed once set and will give an error
// name = "Alice" Error: "Cannot assign to value: 'name' is a 'let' constant."


// Creating Strings
// strings start and end with double quotes " "
// any text inside the double quotations will be read as a string
let string = "This is a string"
let filename = "file.jpg"

// you can also use double quotes inside your string by adding backslash \ into your text
let quote = "then he tapped a sign saying \"Believe\" and walked away"
print(quote)

// multi-line strings are indicated by using three double quotes """
let multiLineString = """
Line 1
Line 2
Line 3
"""
print(multiLineString)


// String Functions
// '.count' will count the length of a string
print(string.count)

// '.uppercased()' will change a string to all uppercase letters
print(greeting.uppercased())

// '.hasPrefix()' will return a boolean value depending on if the string STARTS with the prefix entered within the function
print(string.hasPrefix("This")) // returns true

// '.hasSuffix()' will return a boolean value dependent on if the string ENDS with the prefix entered within the function
print(filename.hasSuffix(".jpg")) // returns true


// Using Integers
// integers are numbers that are not surrounded by double quotations
let score = 10

//huge numbers can be broken up using underscores '_'
let hugeNumber = 100_000_000 // swift ignores underscores

// integers can be used modified using operators ( +, -, *, /)
let lowerScore = score - 2
let higherScore = score + 2
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

// shorthand operators (Compound Assignment Operators)
var counter = 10
counter += 5 // same as counter = counter + 5
counter -= 5 // same as counter = counter - 5
counter *= 5 // same as counter = counter * 5
counter /= 5 // same as counter = counter / 5


// Integer Functions
let number = 120
// '.isMultiple(of: Int) checks to see if an integer is a multiple of another integer
print(number.isMultiple(of: 3)) // returns true
print(120.isMultiple(of: 3)) // returns true


// Using Floats
// floats (Double) are decimal numbers and handled differently from integers
let float = 0.1 + 0.2
print(float)


// Type Safety
// swift will not allow floats and integers to be mixed together
let a = 1    // Integer
let b = 2.0   // Double
// let c = a + b Error: "Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'"
// you can change the variable type to 'Int' or 'Double' to fix this error
var cFloat = Double(a) + b
var cInt = a + Int(b)

// swift will not allow you to change variable types ex. string to int
var userName = "Aaron"
//userName = 10 Error: "Cannot assign to immutable expression of type 'String'"
