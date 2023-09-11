import Foundation

//Comparison operators

//let yes: Bool = true
//let no: Bool = false
let yes = true
let no = false

// Boolean operators

let doesOneEqualTwo = (1==2)
let doesOneNotEqualTwo = (1 != 2)
let alsoTrue = !(1==2)

let isOneGreaterThanTwo = (1>2)
let isOneLessThanTwo = (1<2)

let and = true && true
let or = true || false

let andTrue = 1<2 && 4 > 3
let andFalse = 1<2 && 3>4
let orTrue = 1<2 || 3>4
let orFalse = 1 == 2 || 3 == 4

let andOr = (1<2 && 3>4) || 1<4

(1<2 && 3>4) || 1<4
(true && false) || true
false || true
true
//String Equality

let guess = "dog"
let dogEqualsCat = guess == "cat"

let order = "cat" < "dog"

// Toggling a bool

var switchState = true
switchState.toggle()
switchState.toggle()

let myAge = 20
let isTeenager = myAge >= 13 && myAge <= 19

let theirAge = myAge
let bothTeenagers = theirAge >= 13 && theirAge <= 19 && isTeenager

let reader = "sam"
let author = "matt"
let authorIsReader = reader == author

let readerBeforeAuthor = reader < author

if 2 > 1 {
    print("yes 2 is greated than 1.")
}

let animal = "Fox"

if animal == "Cat" || animal == "Dog" {
    print("Animal is a house pet.")
} else {
    print("Animal is not a house pet")
}


let hourOfDay = 12
var timeOfDay = ""

if hourOfDay < 6 {
    timeOfDay = "Early Morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late Evening"
} else {
    timeOfDay  = "INVALID HOUR!"
}

print(timeOfDay)

if 1 > 2 && author == "Matt Galloway" {
}
if 1 > 2 || author == "Matt Galloway" {
}

var hoursWorked = 45

var price = 0

if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}

price += hoursWorked * 25
print(price)

let a = 5
let b = 10

let min: Int

if a < b {
     min = a
} else {
    min = b
}

let max: Int

if a>b {
    max = a
} else {
    max = b
}
let ab = 5
let ba = 10
let minx = ab < ba ? ab : ba
let maxx = ab > ba ? ab : ba

let myAge30 = 30
if myAge30 >= 13 && myAge30 <= 19 {
    print("age is  between 13 and 19")
} else {
    print("age is not between 13 and 19")
}
let ageTernary = myAge30 >= 13 &&  myAge30 <= 19 ? "Teenager" : "Not a Teenager"
print(ageTernary)

var summ = 1

//while summ < 1000 {
//    summ = summ + (summ + 1)
//}

var sunn = 1
repeat {
    sunn = sunn + (sunn + 1)
} while summ < 1000

//while true {
//    summ = summ + (summ + 1)
//    if summ >= 1000 {
//        break
//    }
//}

var counter = 0
while counter < 10 {
  print("counter is \(counter)")
  counter += 1
}

var counter1 = 0
var roll = 0
repeat {
  roll = Int.random(in: 0...5)
  counter1 += 1
  print("After \(counter1) roll(s), roll is \(roll)")
} while roll != 0


let firstName = "Matt"
var lastName = ""

if firstName == "Matt" {
  lastName = "Galloway"
} else if firstName == "Ray" {
  lastName = "Wenderlich"
}

let fullName = firstName + " " + lastName

/*:
 ### Challenge 2: Boolean challenge
 In each of the following statements, what is the value of the Boolean `answer` constant?
 */

let answer1 = true && true
// true

let answer2 = false || false
// false

let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// true

let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
// true

/*:
 ### Challenge 3: Snakes and ladders
 Imagine you're playing a game of snakes & ladders that goes from position 1 to position 20. On it, there are ladders at position 3 and 7 which take you to 15 and 12 respectively. Then there are snakes at positions 11 and 17 which take you to 2 and 9 respectively.

 Create a constant called `currentPosition` which you can set to whatever position between 1 and 20 which you like. Then create a constant called `diceRoll` which you can set to whatever roll of the dice you want. Finally, calculate the final position taking into account the ladders and snakes, calling it `nextPosition`.
 */
let currentPosition = 2
let diceRoll = 5

var nextPosition = currentPosition + diceRoll
if nextPosition == 3 {
  nextPosition = 15
} else if nextPosition == 7 {
  nextPosition = 12
} else if nextPosition == 11 {
  nextPosition = 2
} else if nextPosition == 17 {
  nextPosition = 9
}

print("Board position after \(currentPosition) is \(nextPosition)")

/*:
 ### Challenge 4: Number of days in a month
 Given a year reprsented by an `Int` and a month represented by a `String` in all lowercase and using the first three letters, calculate the number of days in the month. You need to account for leap years remembering that February ("feb") has 29 days in a leap year and 28 otherwise. A leap year occurs every 4 years, unless the year is divisible by 100, but then if it's divisible by 400 then it is actually a leap year.
 */
let month = "feb"
let year = 2016

var days = 0
if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
  days = 31
} else if month == "apr" || month == "jun" || month == "sep" || month == "nov" {
  days = 30
} else if month == "feb" {
  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    days = 29
  } else {
    days = 28
  }
}

if days > 0 {
  print("\(month) has 31 days")
} else {
  print("Invalid month!")
}

/*:
 ### Challenge 5: Next power of two
 Given a number, determine the next power of 2 above or equal to that number.
 */
let number = 946
var trial = 1
var times = 0
while trial < number {
  trial = trial * 2
  times += 1
}
print("Next power of 2 >= \(number) is \(trial) which is 2 to the power of \(times)")

/*:
 ### Challenge 6: Triangular number
 Given a number, print the triangular number of that depth. You can get a refresher of triangular numbers here: https://en.wikipedia.org/wiki/Triangular_number
 */
var depth = 5
var count = 1
var triangularNumber = 0
while count <= depth {
  triangularNumber += count
  count += 1
}
print("Triangular number with depth \(depth) is \(triangularNumber)")

/*:
 ### Challenge 7: Fibonacci
 Calculate the n'th Fibonacci number. Remember that Fibonacci numbers start its sequence with 1 and 1, and then subsequent numbers in the sequence are equal to the previous two values added together. You can get a refresher here: https://en.wikipedia.org/wiki/Fibonacci_number
 */
let n = 10
var current = 1
var previous = 1
var done = 2
while done < n {
  let next = current + previous
  previous = current
  current = next
  done += 1
}
print("Fibonacci number \(n) is \(current)")

/*:
 ### Challenge 8: Make a loop
 Use a loop to print out the times table up to 12 of a given factor.
 */
let factor = 7

var i = 0
var accumulator = 0
while i <= 12 {
  print("\(factor) x \(i) = \(accumulator)")
  accumulator += 7
  i += 1
}

/*:
 ### Challenge 9: Dice roll table
 Print a table showing the number of combinations to create each number from 2 to 12 given 2 six-sided dice rolls. You should not use a formula but rather compute the number of combinations exhaustively by considering each possible dice roll.
 */
var target = 2

while target <= 12 {
  var combinationsFound = 0
  var valueOnFirstDice = 1
  while valueOnFirstDice <= 6 {
    var valueOnSecondDice = 1
    while valueOnSecondDice <= 6 {
      if valueOnFirstDice + valueOnSecondDice == target {
        combinationsFound += 1
      }
      valueOnSecondDice += 1
    }
    valueOnFirstDice += 1
  }

  print("\(target):\t\(combinationsFound)")

  target += 1
}
