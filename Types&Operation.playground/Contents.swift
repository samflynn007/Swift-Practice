import UIKit

var greeting = "Hello, playground"

// Type conversion

var integer: Int = 100
var decimal: Double = 12.5

integer = Int(decimal)


let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

let typeInteger = 42

let typeDouble = 3.1415

let wantdouble = 3

let actuallyDouble = Double(3)
let actuallyDouble2: Double = 3
let actuallyDouble3 = 3 as Double

// mini - Exercise

let age1 = 42
let age2 = 21
let avg1 = (age1 + age2) / 2

let avg2 = (Double(age1) + Double(age2)) / 2

let characterA: Character = "a"
let characterDog: Character = "🐶"
let stringDog: String = "Dog"

var message = "Hello" + " my name is "
let name  = "mathew"
message += name

let exclamationMark: Character = "!"
message += String(exclamationMark)

message = "hello my name is \(name)!"

let oneThird = 1.0 / 3.0
let oneThirdLondString = "One third is \(oneThird) as a decimal"

let bigString = """
  You can have a string
  that contains multiple
  lines
  by
  doing this.
  """
print(bigString)

let firstName = "Sam"
let lastName = "flynn"

let fullName = firstName +  " " + lastName

let myDetails = "Hello, my name is \(fullName)"
print(myDetails)

let coordinates: (Int, Int) = (2, 3)

let coordinateDouble = (2.5, 3.5)

let coordinameMixed = (2.1, 3)

let x1 = coordinates.0
let y1 = coordinates.1

let coordinateNamed = (x: 2, y: 3)

let x2 = coordinateNamed.x
let y2 = coordinateNamed.y

let coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D
//let x3 = coordinates3D.x
//let y3 = coordinates3D.y
//let z3 = coordinates3D.z
let (x4, y4, _) = coordinates3D

//let temperature = (9, 10, 2023, 34.5)
var temperature = (month: 9, day: 10, year: 2023, avgtemp: 34.5)
let (_, day, _, avgTemp) = temperature
temperature.avgtemp = 32.2


typealias Animal = String

let dog: Animal = "Dog"

typealias Coordinates = (Int, Int)
let xy: Coordinates = (2, 4)

// MARK :- Challenges

// Challenge 1

let coordinatesN = (2,3)
// Challenge 2
let coordinatesNamed = (row: 2, column: 3)

//Challenge 3

//let character: Character = "Dog" INVALID
//let character: Character = "🐶" VALID
//let string: String = "Dog" VALID
//let string: String = "🐶" VALID

//Challenge 4

let tuple = (day: 15, month: 8, year: 2015)
//let day = tuple.Day // Invalid because it should be 'day' instead of 'Day'

//Challenge 5

//let named = "Matt" 'name' is a constant, so you can't change its value
//named += " Galloway"

//Challenge 6

let tupled = (100, 1.5, 10)
let value = tupled.1 // 1.5

//Challenge 7

let tupleds = (day: 15, month: 8, year: 2015)
let month = tupleds.month // 8

//Challenge 8

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)" // 10 multiplied by 5 equals 50
//Challenge 9

let a = 4
let b: Int32 = 100
let c: UInt8 = 12
let answer = a + Int(b) - Int(c) //92

// Challenge 10: Different precision 𝜋s
let difference = Double.pi - Double(Float.pi) // 1.50995798975373e-07
