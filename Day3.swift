import UIKit

// Storing Data in an Array
// we can use arrays to store many values
// create an array by surrounding data with brackets '[]' and separating data with commas ','
var beatles = ["John", "Paul", "George", "Ringo"]  // array of strings
var numbers = [4, 8, 15, 16, 23, 42]        // array of integers
var temperatures = [25.3, 28.2, 26.4]        // array of doubles
// arrays only allow for one type of data. You cannot have an array of str and int
//var mixed array = ["Bob", 26]  Error: "Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional."

// access data by calling its index position
print(beatles[0])    // returns John
print(numbers[1])    // returns 8
print(temperatures[2]) // returns 26.4

// create an empty array using 'Array<Type>()' or [Type]()
var students = Array<String>()  // Empty string array
var students2 = [String]()   // Shorthand for empty string array
// add data to an array using '.append'
students.append("Bob")
students.append("Alice")
print(students)

var scores = Array<Int>()  // Empty integer array
var scores2 = [Int]()   // Shorthand for empty integer array
scores.append(100)
scores.append(80)
print(scores)



// Array Functions
var characters = ["Lana", "Pam", "Ray", "Sterling"]
// use '.count. to count the number of item in an array
print(characters.count) // returns 4

// use '.remove()' to remove items from an array
characters.remove(at: 2)
print(characters)  // returns ["Lana", "Pam", "Sterling"] having removed "Ray"

// use '.contains.' to check if an item is in an array
characters.contains("Ray") // returns false because we removed Ray
characters.contains("Lana") // returns true because Lana is in array

// use '.removeAll()' to remove all items in an array
characters.removeAll() // returns [], having removed "Lana", "Pam", "Sterling"
print(characters)

// use'.sorted()' to sort an array in order
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())  // returns ["Budapest", "London", "Rome", "Tokyo"]

// use '.reversed()' to reverse the order of an array
print(cities.reversed())



// Dictionaries
// using dictionaries is another way of storing data to a single variable
// un like arrays where data is stored sequentially to an index, dictionaries store data within a key, value pairs
let employee = [
  "key": "value",
  "name": "Bob",
  "job": "developer"
]
print(employee["job"]) // using this method, we get a warning: "Expression implicitly coerced from 'String?' to 'Any'"
// to avoid this warning, we can set a default value to use if there is no data entered in that field
print(employee["name", default: "Unknown"])

// set an empty dictionary
// var/let name = [Key Type: Value Type]()
var employee2 = [String: String]()
employee2["name"] = "Alice"
employee2["job"] = "manager"

// change data in a dictionary by assigning the key a new value
employee2["job"] = "project manager"



// Sets
// sets are similar to arrays except for two differences
// 1) sets do not store values at an index, completely unordered
// 2) sets do not allow for duplicates
var actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel Jackson"])
print(actors) // each time we print the set, it will display in a random order each time

// to add data to a set we will use '.intert()' instead of '.appened()'
actors.insert("Mark Wahlberg")
print(actors)

// advantages of using sets:
// > locate items faster than an array
// > does not allow duplicates



// Create and Use Enums (enumeration)
// a set of named values we can create and use within our code
// set the range of values an enum can have. Helps with typing/spelling errors
// advantages: more efficient and safe to work with
enum weekday {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
}

var day = weekday.monday
day = weekday.tuesday
day = weekday.wednesday
// settings an incorrect day will cause an error
//day = weekday.saturday Error: "Type 'weekday' has no member 'saturday'"
//day = weekday.frday spelling errors will also be flagged

// shorthand for setting case in an enum
enum weekdayShorthand {
  case monday, tuesday, wednesday, thursday, friday
}
// shorthand for changing a variable using an enum
var dayShorthand = weekdayShorthand.monday // once we use an enum once in a variable, we don't have to include its name
dayShorthand = .tuesday
dayShorthand = .wednesday
