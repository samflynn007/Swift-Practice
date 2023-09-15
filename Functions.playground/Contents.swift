import UIKit

func printMyName() {
    print("My name is Sam flynn")
}

printMyName()

func printMultipleOfFive(_ myValue: Int) {
    print("\(myValue) * 5 = \(myValue * 5)")
}

printMultipleOfFive(5)

func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \((multiplier * andValue))")
}

printMultipleOf(multiplier: 3, andValue: 5)


func multiply(_ number: Int, by multiplier: Int) -> Int {
    
    return number * multiplier
    
}

let result = multiply(8, by: 5)
print("\(result)")

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let results = multiplyAndDivide(9, by: 9)
let prod = results.product
let quot = results.quotient

print(prod, quot)

func incremAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
var value = 9
incremAndPrint(&value)
print(value)

func printFullName(firstName: String, lastName: String) {
  print(firstName + " " + lastName)
}
printFullName(firstName: "Sam", lastName: "Flynn")

func printFullName(_ firstName: String, _ lastName: String) {
  print(firstName + " " + lastName)
}
printFullName("Sam", "Flynn")

func calculateFullName(_ firstName: String, _ lastName: String) -> String {
  firstName + " " + lastName
}
let fullName = calculateFullName("Sam", "Flynn")

func calculateFullNameWithLength(_ firstName: String, _ lastName: String) -> (name: String, length: Int) {
    let fullName = firstName + " " + lastName
    return (fullName, fullName.count)
}

let fullNameLen = calculateFullNameWithLength("Saam", "Flynn")
let fulName = fullNameLen.name
let fullNameCou = fullNameLen.length
print(fulName, fullNameCou)

// Functions as variable


func addi(_ a: Int, _ b: Int) -> Int {
    a + b
}

var function = addi

print(function(4,4))


func subtract(_ a: Int, _ b: Int) -> Int {
    a - b
}
var subFunc = subtract
print(subFunc(3,3))

func printResult(_ function: (Int,Int)-> Int, _ a: Int, _ b: Int) {
    let resul = function(10,8)
    print(resul)
}

printResult(addi, 10, 8)


/// Calculates the average of three values
/// - Parameters:
///   - a: The first value.
///   - b: The second value.
///   - c: The third value.
/// - Returns: The average of the three values.
func calculateAverage(of a: Double, and b: Double, and c:
Double) -> Double {
  let total = a + b + c
  let average = total / 3
  return average
}
calculateAverage(of: 1, and: 3, and: 5)


func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
  number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
  if number < 0 {
    return false
  }
  
  /*
   We handle these cases up front because we want to make sure the range 2...root (used below) is valid, which is the case only when root >= 2, so for numbers >= 4.
   */
  if number <= 3 {
    return true
  }

  let doubleNumber = Double(number)
  let root = Int(doubleNumber.squareRoot())
  for divisor in 2...root {
    if isNumberDivisible(number, by: divisor) {
      return false
    }
  }
  return true
}
isPrime(6)
isPrime(13)
isPrime(8893)


func fibonacci(_ number: Int) -> Int {
  if number <= 0 {
    return 0
  }

  if number == 1 || number == 2 {
    return 1
  }

  return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(10)
