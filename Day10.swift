import UIKit

//How to Create Structs
// > Structs let developers create customer and complex data types, including variables and functions
// Example creating a struct:
struct Album {  // when refering to struct type use a capital letter in the beginning
    let title: String   // when referencing a property inside a strict use camelCase
    let artist: String  // set type for const or var using colin ':'
    let year: Int
    
    func printsummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
// Example setting an instance of a struct:
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)   // code is the initializer, initializes the first values of the struct
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

// > We can now call and print our struct
print(red.title)
print(wings.artist)

// > We can also call the function within our struct:
red.printsummary()
wings.printsummary()



struct Employee {
    let name: String
    var vacationRemaining = 14  // set default values using equal sign '='
    
    mutating func takeVacation(days: Int) { // Any function that changes the data within a struct must be classified as a 'mutating func'
       if vacationRemaining > days {
           vacationRemaining -= days
           print("I'm going on vacatiokn")
           print("Days remaining: \(vacationRemaining)")
       } else {
           print("Oops! Tjere aren't enough days remaining.")
       }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)



// Difference Between a Struct and a Tuple
// > Tuples are essentially structs without a name
// Example tuple
let name = (first: "Taylor", last: "Swift")
// > Use tuples when returning two or more values from a fucntion but only use once

// Example struct
struct User {
    var name: String
    var age: Int
    var city: String
}
// > Use structs when using fixed data multiple times



// Difference between a function and a method
// Within swift functions (func) and methods (variable.method()) both allow developers to run functionality repeatedly
// The difference is that methods belong to a type (structs, enums, and classes), allowing the delveloper to
// refernce other propertys and methods belonging to that type



// Compute Property Values Dynamically
// > Structs have two kinds of properties
//   1) Stored Property: A varable or constant that holds a piece of data inside an instance of the struct
//      to be used later.
//       > use when you need to regularly access data without changing its value.
//   2) Computed Property: A value that us re-computed every time its called.
//       > Accessed like sotred properties and work like functions
//       > use when a properties value relies on the values if other properties

// Using computed properties
// > taking another look at our previous example of a struct that calulates vacation time
//   we where subtracting the 'vacationAllocated' by 'takeVacation' and in the process losing the original data
//   of how many vacation days where avaialble to begin with
struct Employee2 {
    let name: String
    var vacationAllocated = 14
}

// > Using computed properties we can re-write the code to store these values and then use them to compute a new value
//   without losing any previous data
struct Employee3 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0   // adding another varable that stores how many days of vacation has been used
    
    var vacationRemaining: Int {
        get{    // tells swift the code will be reading a value
            vacationAllocated - vacationTaken   // using computed properties we are now usbracting two previously stored
        }                                       // variables to compyte a new varable that we can use without changing any of the original data
        
        set {   // tells swift the code will be writing a value
            vacationAllocated = vacationTaken + newValue    //newValue is provided by swift to use
        }
    }
}
// > Now we can use our structs computed properties to track vacation time without changing any original data
var alice = Employee3(name: "Alice Wonder", vacationAllocated: 14)
alice.vacationTaken += 4
alice.vacationRemaining = 5
print(alice.vacationAllocated)



// Using Property Observers to Take Action When a Property Changes
// > Swift allows us to create 'property observers' that runs code before and after a property changes
// > 'didSet' observer to run when the property just changed and is most commonly used
// > 'willSet' observer to run before the property changed. Use willSet when you want to know
//   the state of your program before a change is made

// > Property observers are convenient to use to ensure functionality is executed everytime the property changes
// > Carful not to use unnessesary property observers that will slow down your code everythime to change a value

// Example code before using property observers
struct Game {
    var score = 0
}

var game = Game()
game.score += 10                    // Every time we change the game score
print("Score is now \(game.score)") // we have to manually type print to show an updated score
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

// Example code after usng didSet property observer
struct Game2 {
    var score = 0 {
        didSet {    // using the didSet observer we can get rid of our previous print statements
            print("Score is now \(score)")  // and run print after the score updates each time
        }
    }
}

var game = Game2()
game.score += 10
game.score -= 3
game.score += 1

// Example code using willSet and didSet property observers
struct App {
    var contacts = [String]() {
        willSet {   // will run the following print statements before updating property
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)") // Swift provides 'newValue' and 'oldValue' variables to all before and after a property changes
        }                                           // newValue will print the new value after its changed

        didSet {    // will run the following print statements after updating property
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)") // oldValue will contain the old value before it was changed
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")



// How to Create Custom Initializers
// > Initializers are special methods that prepare new struct instances to be used

// Example using a memberwise initializer
struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Megan R", numebr: 15)

// Example using initializers to prepare a new instance
struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {   // initializers are made using 'init' keyword
        self.name = name    // self is used to refer to the current instance
        self.number = number
    }
}

// > When using customer initializers Swift does not allow memeberwise initializaers
//   thus our previous example code:
let player = Player(name: "Megan R", numebr: 15)
//   would not be allowed

// > However we can move the customer initializer to an extension, allowing us to
//   use memberwise and customer intializers together

struct Player {
    let name: String
    let number: Int
}

extension Player {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous player...")
    }
}

// creating a named player now works
let roslin = Player(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Player()
