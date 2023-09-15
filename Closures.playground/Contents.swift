import UIKit

var multiplyClosur: (Int, Int) -> Int

var multiplyClosure = {(a: Int, b: Int) -> Int in
    return a * b
    
}

let result = multiplyClosure(4,3)

multiplyClosure = {(a, b) in
    return a * b
    
}

multiplyClosure = {
    $0 * $1
    
}

func operateOnNumbers(_ a: Int, _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    print(result)
    return result
}

let addClosure = { (a: Int, b: Int) in
    a+b
    
}
operateOnNumbers(4, 2, operation: addClosure)

func addFunction(_ a: Int, _ b: Int) -> Int {
    a+b
    
}
operateOnNumbers(4, 2, operation: addFunction)

operateOnNumbers(4, 2, operation: { (a: Int, b: Int) -> Int in
return a + b })

operateOnNumbers(4, 2, operation: { $0 + $1 })

operateOnNumbers(4, 2, operation: +)
operateOnNumbers(4, 2) {
    $0 + $1
    
}

func sequenced(first: ()->Void, second: ()->Void) {
    first()
    second()
    
}
sequenced {
    print("Hello, ", terminator: "")
} second: {
    print("world.")
}
let voidClosure: () -> Void = {
  print("Swift Apprentice is awesome!")
}
voidClosure()

var counter = 0
let incrementCounter = {
    counter += 1
    
}

incrementCounter()

func countingClosure() -> () -> Int {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()
counter1() // 1
counter2() // 1
counter1() // 2


let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]
names.sorted()


names.sorted {
    $0 > $1
}
let values = [1, 2, 3, 4, 5, 6]
values.forEach {
   print($0*$0)
}

var prices = [1.5, 10, 4.99, 2.30, 8.19]

prices.filter {
    $0 > 5
}

//func filter(_ isIncluded: (Element)-> Bool) -> [Element]
let largerPrice = prices.first {
    $0 > 5
}

let salePrices = prices.map {
    $0 * 0.9
    
}

let userInput = ["0", "11", "haha", "42"]
let numbers1 = userInput.map {
    Int($0)
    
}

let numbers2 = userInput.compactMap {
    Int($0)
    
}

let userInputNested = [["0", "1"], ["a", "b", "c"], ["🤓"]]
let allUserInput = userInputNested.flatMap {
    $0
}

let sum = prices.reduce(0) {
    $0 + $1
}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
    $0 + $1.key * Double($1.value)
}


let farmAnimals = ["$": 5, "%": 10, "&": 50, "!":1]
let allAnimals = farmAnimals.reduce(into: []) {
  (result, this: (key: String, value: Int)) in
  for _ in 0 ..< this.value {
    result.append(this.key)
} }


let arr = [1,2,3,4]
arr.reduce(0) {
    $0 * $1
}

let removeFirst = prices.dropFirst()
let removeFirstTwo = prices.dropFirst(2)

print(removeFirst)
print(removeFirstTwo)
//removeFirst = [10, 4.99, 2.30, 8.19]
//removeFirstTwo = [4.99, 2.30, 8.19]
let firstTwo = prices.prefix(2)
let lastTwo = prices.suffix(2)
print(firstTwo)
print(lastTwo)

func isPrime(_ number: Int) -> Bool {
  if number == 1 { return false }
  if number == 2 || number == 3 { return true }
  for i in 2...Int(Double(number).squareRoot()) {
    if number % i == 0 { return false }
  }
return true
}
var primes: [Int] = []
var i = 1
while primes.count < 10 {
    if isPrime(i) {
        primes.append(i)
    }
    i += 1
    
}
primes.forEach { print($0) }

// mini Excercise

let namesn = ["Matt", "Ray", "Vicki", "Alice", "Barnaby"]

let allNames = namesn.reduce("") {
  $0 + $1
}

let filteredNames = namesn.filter {
  $0.count > 4
}.reduce("") {
  $0 + $1
}

let namesAndAges = ["Matt": 30, "Alice": 25, "Barnaby": 12, "Ingrid": 41]

let children = namesAndAges.filter {
  $0.value < 18
}

let adults = namesAndAges.filter {
  $0.value >= 18
}.map {
  $0.key
}



// Challenge 1: Repeating yourself


func repeatTask(times: Int, task: () -> Void) {
 for _ in 0..<times {
   task()
 }
}

repeatTask(times: 10) {
 print("Swift Apprentice is a great book!")
}

//Challenge 2: Closure sums

func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    for i in 1...length {
        result += series(i)
    }
    return result
}
mathSum(length: 10) { result in
    return result
}

// Sum of first 10 square numbers
mathSum(length: 10) { number in
  number * number
}

mathSum(length: 10) {
  $0 * $0
}

func fibonacci(_ number: Int) -> Int {
  if number <= 0 {
    return 0
  }

  if number == 1 || number == 2 {
    return 1
  }

  return fibonacci(number - 1) + fibonacci(number - 2)
}
mathSum(length: 10, series: fibonacci)


let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
 ]

var averageRatings: [String: Double] = [:]
appRatings.forEach {
  let total = $0.value.reduce(0, +) // + is a function too!
  averageRatings[$0.key] = Double(total) / Double($0.value.count)
}
averageRatings

let goodApps = averageRatings.filter {
  $0.value > 3
}.map {
  $0.key
}
