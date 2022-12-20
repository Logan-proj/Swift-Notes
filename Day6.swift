import UIKit

// Using for Loops

// loop through an array
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
  print("Swift works freat on \(os).")
}

// looping without a constant variable
let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names { // if we are not using a variable, then we can use an underscore '_' a placeholder
  print("[CENSORED] is a secret agent!")
}

// loop through a range
for i in 1...12 {
  print("5 x \(i) is \(5 * i)")
}

// loop through a range excluding the last number
for i in 1..<12 {
  print("Counting from 1 up to 12: \(i)")
}



// Using while Loops
// a while loop will continually execute the loop until the condition is met
var countdown = 10

while countdown > 0 {
  print("\(countdown)...")
  countdown -= 1
}

print("Blast off!")

var roll = 0

while roll != 20 {
  roll = Int.random(in: 1...20)
  print("I rolled a \(roll)")
}

print("Critial hit")



// Using break and continue to Skip Loop Items
// 'continue' will skip loop interactions that do not fit the condition and continue with other iterations
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
  if filename.hasSuffix(".jpg") == false {
    continue  // if the filename does not equal ".jpg" then skip the file and continue
  }
  print("found picture: \(filename)")
}

// break will exit a loop
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
  if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
    multiples.append(i)
     
    if multiples.count == 10 {
      break  // will break the loop once there are 10 numbers within the array
    }
  }
}

print(multiples)
