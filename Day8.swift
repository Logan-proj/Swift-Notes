import UIKit

// Providing Default Values for Function Parameters
// set default values by setting the parameter equal to a value
func printName(name: String = "Default Name") {
  print("My name is \(name).")
}

printName(name: "Alice")  // prints "My name is Alice."
printName()         // prints "My name is Default Name."



// Throwing Functions and Error Handling
// used for when a function might throw an error so that the error is handled properly if it occurs
// handle errors in 3 steps
// 1) create an enum with error types
enum PasswordError: Error {
  case short, obvious
}

// 2) create a function to throw errors
func checkPassword(_ password: String) throws -> String {  // use the throws keyword before the return type
  if password.count < 5 { throw PasswordError.short }   // throws must be before if else statements
  if password == "12345" { throw PasswordError.obvious }
   
  if password.count < 8 {
    return "OK"
  } else if password.count < 10 {
    return "Good"
  } else {
    return "Excellent"
  }
}

// 3) catch the error
// throwing functions rely on three keywords: 'do' 'try' 'catch'
// 'try' keyword helps acknowledge which functions might throw errors
let string = "12345"

do {
  let result = try checkPassword(string) // 'try' must be written before throwing functions.
  print("Password rating: \(result)")
} catch PasswordError.short {                  // 'catch' must follow 'try'
  print("Error: Your password is too short.")
} catch PasswordError.obvious {
  print("Error: Password is easily guessable")
} catch {
  print("There was an error: \(error.localizedDescription)") // catches all apple errors
}
