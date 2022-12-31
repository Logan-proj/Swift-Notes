import UIKit

// Limiting Internal Data Access using Access Controls
// > By default, structs allow the access of properties and methods. To change this
//  we want to use 'access controls' to restrict external access to properties/methods and only
//  allow access/modification by methods that belong inside the struct.
// > Access controls help limit the changes allowed from within your code , helping make less
//  mistakes during development.
//
// > Keywords for access controls in Swift are:
//  1) private: tells Swift not to allow changes from outside the struct
//  2) fileprivate: tells Swift not to let anything outside the current file make changes
//  3) public: means Swift allows changes to be made anywhere
//  4) private(set): tells Swift methods outside the struct can read the data but not make changes
//
// Example using 'private' access control:
struct BankAccount {
  private var funds = 0  // using 'private' access control to deny any changes being made external to our struct
   
  mutating func deposit(amount: Int) {
    funds += amount
  }
   
  mutating func withdraw(amount: Int) {
    if funds >= amount {
      funds -= amount
      return true
    } else {
      return false
    }
  }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
  print("Withdrew money successfully")
} else {
  print("Failed to get the money")
}

account.funds -= 1000  // Without using 'private' access control within our struct this line
            // of code would be able to bypass our previous check for withdrawal and over
            // draw the account funds. By using 'private var funds,' this will not be allowed.



// Using Static Properties and Methods
// > Static properties and methods are useful to use when storing common functionality to use
//  across an entire app. Static properties allow us to easily access data without having to create
//  a new instance every time.
// Example code using static
struct School {
  static var studentCount = 0 // struct tells Swift that both the 'studentCount' property and 'add()' method
                // belong to the struct itself.
  static func add(student: String) {
    print("\(student) joined the school.")
    studentCount += 1
  }
}
// > Instead of creating an instance of school and using the method:
//   var westHigh = School()
//   westHigh.add(student: "Taylor Swift")

// > Because we wrote both property and method using static keyword
//  we can use the method 'add()' directly on the struct
School.add(student: "Taylor Swift")
print(School.studentCount)
