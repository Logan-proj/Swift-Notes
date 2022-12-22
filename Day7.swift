import UIKit

// Functions
// functions allow us to re-use the same code in multiple places
// Use functions to break up a large code function into easier to read smaller functions
func myFirstFunction() {  // create a new function with 'func'
  print("My first Swift function!")
}

myFirstFunction()  // call a function with its name ending in parenthesis '()'



// Using Parameters with Functions
func printTimesTables(number: Int) {  // set a parameter within the perenthisis '()' if a function
  for i in 1...12 {
    print("\(i) * \(number) is \(i * number)")
  }
}

printTimesTables(number: 2) // using parameters we can pass through values to use within the function
printTimesTables(number: 5)
printTimesTables(number: 8)

// using multiple parameters within a function
func exampleOfTwoPerameters(name: String, location: String) {  // separate multiple parameters with commas ','
  print("Hello, my name is \(name) and I and going to \(location) for vacation.")
}

exampleOfTwoPerameters(name: "Bob", location: "London")



// Return a Single Value from a Function
// set a function to return a value using '->'
func rollDice() -> Int {
  return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


func sameLetters(string1: String, string2: String) -> Bool {
  return string1.sorted() == string2.sorted()
}

print(sameLetters(string1: "string", string2: "ringst"))



// Return Multiple Values from a Function
// returning multiple values using an array
// cons: remembering that index the data returns in
func getUser1() -> [String] {
  ["Taylor", "Swift"]
}

let user1 = getUser1()
print("Name: \(user1[0]) \(user1[1])")

// returning multiple values using dictionaries
// cons: harder to read/longer code, having to include default values
func getUser2() -> [String: String] {
  ["firstName": "Taylor", "lastName": "Swift"]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "?"]) \(user2["lastName", default: "?"])")

// returning multiple values using tuples
func getUser3() -> (firstName: String, lastName: String) {
  (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")
// OR
let (firstName, lastName) = getUser3() // using restructuring
print("Name: \(firstName) \(lastName)")



// Arrays vs. Sets vs. Tuples
// Items where the order is essential are best stored in an array
// Items where the order is NOT essential, and you want no duplicates are best stored in sets
// Two items of a fixed type are best stored in a tuple



// Using Custom Parameter labels
// naming function parameters make it easier to remember what the function does when called
// and what type of data is needed to call that function
func rollDice(sides: Int, count: Int) -> [Int] {
  var rolls = [Int]()
   
  for _ in 1...count {
    let roll = Int.random(in: 1...sides)
    rolls.append(roll)
  }
   
  return rolls
}

let rolls = rollDice(sides: 6, count: 4)
print(rolls)

// can also have the same function name as long as it has a different parameter label
func hireEmployee(name: String) {}
func hireEmployee(title: String) {}
func hireEmployee(location: String) {}

// set external and internal parameter labels
func printTimesTables(for number: Int) {  // first parameter label 'for' will be used externally
  for i in 1...12 {            // second parameter label 'number' will be used internally
    print("\(i) X \(number) is \(i * number)")
  }
}

printTimesTables(for: 5)  // external parameter label is only used when calling the function

// can also be set to no external parameter label by using an underline'_' before the internal parameter label
// might want to use this technique when the function name is a verb, and the first parameter is a noun
// example: func buy(toothbrush)
func isUppercase(_ string: String) -> Bool {
  string == string.uppercased()
}

let string = "HELLO WORLD"
let outcome = isUppercase(string)  // hidden parameter label
