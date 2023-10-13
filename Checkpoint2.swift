import UIKit

// Checkpoint 2: create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

// create an array of strings
let arrayOfStrings = ["apple", "banana", "orange", "apple", "grape", "banana", "kiwi", "mango", "kiwi", "pineapple"]

// print the number of items in that array
print(arrayOfStrings.count) // .count function counts how many items are in the array

// by putting the array within a Set, we can ensure that duplicate strings are ignored
let set = Set(arrayOfStrings)

// prints the number of unique items in the array
print(set.count)
