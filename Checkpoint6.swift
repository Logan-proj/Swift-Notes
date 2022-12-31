import UIKit

// Checkpoint 6
// 1) Create a struct to store information about a car
// 2) Include its model, number of seats, and current gear
// 3) Add a method to change gears up or down.

struct NewCar {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int
    
    mutating func changeGear(_ direction: String) {
        if direction == "Up" {
            if currentGear + 1 > 10 {
                print("Change gear out of bounds")
            } else {
                currentGear += 1
            }
        } else if direction == "Down" {
            if currentGear - 1 < 1 {
                print("Change gear out of bounds")
            } else {
                currentGear -= 1
            }
        }
        
        print("Current gear is \(currentGear)")
    }
}

var honda = NewCar(model: "Civic", numberOfSeats: 4, currentGear: 1)
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Up")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
honda.changeGear("Down")
