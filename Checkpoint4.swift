import UIKit

// Checkpoint 4
// Write a function that accepts an integer from 1 through 10_000 and returns the integer square root of that number
// > Cant use the built-in sqrt() function or similar
// > If the number is less than 1 or greater than 10,000 you should throw an "out of bounds" error.
// > Only consider integer square roots
// > If you can't find the square root, throw a "no root" error

enum RootError: Error {
  case outOfBounds, noRoot
}

func findSquareRoot(of number: Int) throws -> Int {
  var root: Int = 0
  if number < 1 || number > 10_000 { throw RootError.outOfBounds }
   
  for num in 1...100 {
    if num * num == number {
      root = num
    } else {
      continue
    }
  }
   
  if root == 0 { throw RootError.noRoot }
  else { return root }
}

let userNumber = 9

do{
  let squareRoot = try findSquareRoot(of: userNumber)
  print("The square root of \(userNumber) is \(squareRoot).")
} catch RootError.outOfBounds {
  print("Please enter a number between 1 and 10,000.")
} catch RootError.noRoot {
  print("There is no root for \(userNumber).")
}
