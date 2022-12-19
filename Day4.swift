import UIKit

// Type Annotations
// setting the data types for our variables and constants
// swift will error if the incorrect data type is entered
// we will want to use type annotations when:
// 1) Swift can't figure out what type should be used (more for advanced code)
// 2) You want swift to use a different type from its default
// 3) You don't want to assign a value just yet

// varables and constants:
let surname: String = "Lasso"
var score: Int = 0
var decimal: Double = 0

// arrays
var albums: [String] = ["Red", "Fearless"]

// dictionaries
var user: [String: String] = ["id": "@JohnDoe"]

// sets
var books: Set<String> = Set([
  "The Bluest Eye",
  "Foundation",
  "Girl, Woman, Other"
])
