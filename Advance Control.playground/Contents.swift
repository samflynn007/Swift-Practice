import UIKit

let closedRange = 0...5

let halfOpnings = 0..<5


//random interlude

while Int.random(in: 1...6) != 6 {
    print("Not a 6")
}

// For loop

let count  = 10
var sum = 0

for i in 1...count {
    sum += i
}


var summ = 1
var lastSumm = 0

for _ in 0..<count {
    let temp = summ
    summ = summ + lastSumm
    lastSumm = temp
}


sum = 0
for i in 1...count where i % 2 == 1 {
sum += i
    
}

var summs = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    for column in 0..<8 {
        summs += row * column
    }
}

sum = 0
rowLoop: for row in 0..<8 {
  columnLoop: for column in 0..<8 {
    if row == column {
      continue rowLoop
    }
    sum += row * column
  }
}

// FOR LOOPS
let range = 1...10
for i in range {
  let square = i * i
  print("\(square)")
}

for i in range {
  let squareRoot = sqrt(Double(i))
  print("\(squareRoot)")
}

var sums = 0
for row in 0..<8 where row % 2 == 1 {
  for column in 0..<8 {
    sum += row * column
  }
}
sum


let number = 10

switch number {
case 0 :
    print("Zero")
default :
    print("Non - Zero")
}

switch number {
case 10:
    print("It’s ten!")
default:
    break
}


let string = "Dog"
switch string {
case "Cat", "Dog":
  print("Animal is a house pet.")
default:
  print("Animal is not a house pet.")
}

let hourOfDay = 12
var timeOfDay = ""
switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
  timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
  timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
  timeOfDay = "Afternoon"
case 17, 18, 19:
  timeOfDay = "Evening"
case 20, 21, 22, 23:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

switch hourOfDay {
case 0...5:
    timeOfDay = "Early morning"
case 6...11:
    timeOfDay = "Morning"
case 12...16:
    timeOfDay = "Afternoon"
case 17...19:
    timeOfDay = "Evening"
case 20..<24:
    timeOfDay = "Late evening"
default:
    timeOfDay = "INVALID HOUR!"
}

switch number {
case let x where x % 2 == 0:
  print("Even")
default:
  print("Odd")
}


let coordinates = (x: 3, y: 2, z: 5)
switch coordinates {
case (0, 0, 0): // 1
  print("Origin")
case (_, 0, 0): // 2
  print("On the x-axis.")
case (0, _, 0): // 3
  print("On the y-axis.")
case (0, 0, _): // 4
  print("On the z-axis.")
default:        // 5
  print("Somewhere in space")
}


switch coordinates {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0):
    print("On the x-axis at x = \(x)")
case (0, let y, 0):
    print("On the y-axis at y = \(y)")
case (0, 0, let z):
    print("On the z-axis at z = \(z)")
case let (x, y, z):
    print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

switch coordinates {
case let (x, y, _) where y == x:
    print("Along the y = x line.")
case let (x, y, _) where y == x * x:
    print("Along the y = x^2 line.")
default:
    break
}


// SWITCH STATEMENTS
let myAge = 30

switch myAge {
case 0...2:
  print("Infant")
case 3...12:
  print("Child")
case 13...19:
  print("Teenager")
case 20...39:
  print("Adult")
case 40...60:
  print("Middle aged")
case _ where myAge >= 61:
  print("Elderly")
default:
  print("Invalid age")
}

let tuple = ("Matt", 30)
switch tuple {
case (let name, 0...2):
  print("\(name) is a infant")
case (let name, 3...12):
  print("\(name) is a child")
case (let name, 13...19):
  print("\(name) is a teenager")
case (let name, 20...39):
  print("\(name) is an adult")
case (let name, 40...60):
  print("\(name) is a middle aged")
case let (name, age) where age >= 61:
  print("\(name) is a elderly")
default:
  print("Invalid age")
}


var sum = 0
for i in 0...5 {
  sum += i
}
sum

//Challenge 2: Count the letter
 
var aLotOfAs = ""
while aLotOfAs.count < 10 {
  aLotOfAs += "a"
}
aLotOfAs
aLotOfAs.count

/*:
 ### Challenge 3: What will print
 Consider the following switch statement:
 
 ```
 switch coordinates {
 case let (x, y, z) where x == y && y == z:
   print("x = y = z")
 case (_, _, 0):
   print("On the x/y plane")
 case (_, 0, _):
   print("On the x/z plane")
 case (0, _, _):
   print("On the y/z plane")
 default:
   print("Nothing special")
 }
 ```

 What will this code print when coordinates is each of the following?
 ```
 let coordinates = (1, 5, 0)
 let coordinates = (2, 2, 2)
 let coordinates = (3, 0, 1)
 let coordinates = (3, 2, 5)
 let coordinates = (0, 2, 4)
 ```
 */
let coordinates = (1, 5, 0)
// "On the x/y plane"

//let coordinates = (2, 2, 2)
// "x = y = z"

//let coordinates = (3, 0, 1)
// "On the x/z plane"

//let coordinates = (3, 2, 5)
// "Nothing special"

//let coordinates = (0, 2, 4)
// "On the y/z plane"

switch coordinates {
case let (x, y, z) where x == y && y == z:
  print("x = y = z")
case (_, _, 0):
  print("On the x/y plane")
case (_, 0, _):
  print("On the x/z plane")
case (0, _, _):
  print("On the y/z plane")
default:
  print("Nothing special")
}

/*:
 ### Challenge 4: Closed range size
 A closed range can never be empty. Why?
 */
// Ranges must always be increasing.  With a closed range the second number is always included in the range.

let halfOpenRange = 100..<100 // empty
let closedRange = 100...100   // contains the number 100

halfOpenRange.isEmpty
closedRange.isEmpty

/*:
 ### Challenge 5: The final countdown
 Print a countdown from 10 to 0.  (Note: do not use the `reversed()` method, which will be introduced later.)
 */
for i in 0...10 {
  print(10 - i)
}
/*:
 ### Challenge 6: Print a sequence
 
 Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.  (Note: do not use the `stride(from:to:by:)` function, which will be introduced later.)
 */
var value = 0.0

for _ in 0...10 {
  print(value)
  value += 0.1
}

// Alternate solution
for counter in 0...10 {
  print(Double(counter) * 0.1)
}
