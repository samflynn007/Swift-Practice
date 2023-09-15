import UIKit

var player = ["Alice", "bob","Cindy","Dan"]

print(player.isEmpty)

if player.count < 2 {
    print("we need at least two plaayers!")
} else {
    print("Let's start")
}

var currentPlayer = player.first

print(currentPlayer as Any)
let currentLastPlayer = player.last

print(currentLastPlayer as Any)

currentPlayer = player.min()

if let currentPlayer = currentPlayer {
    print(currentPlayer)
}

var firstPlay = player[0]

let upcomingPlayerSlice = player[1...2]
print(upcomingPlayerSlice[1], upcomingPlayerSlice[2])


func iseliminated(play: String)-> Bool {
    !player.contains(play)
}

print(iseliminated(play: "sign"))

player.append("Eli")
player += ["Gina"]

print(player)

player.insert("Frank", at: 5)
print(player)

var removedPlayer = player.removeLast()
//print("\(removedPlayer) was removed")
removedPlayer = player.remove(at: 1)
print("\(removedPlayer) was removed")
print(player.firstIndex(of: "Dan"))
player[4] = "Franklin"
player[0...1] = ["Donna", "Craig", "Brian", "Anna"]
print(player)
let playerAnna = player.remove(at: 3)
player.insert(playerAnna, at: 0)
print(player)
player.swapAt(1, 3)
print(player)

player.sort()
print(player)

let scores = [2, 2, 8, 6, 1, 2, 1]

for play in player {
    print(play)
}

for (ind,valu) in player.enumerated() {
    print(ind, valu)
}


func sumOfElements(in array: [Int]) -> Int {
    var sum = 0
    for numbe in array {
        sum += numbe
    }
    return sum
}

print(sumOfElements(in: scores))


player = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
let score = [2, 2, 8, 6, 1, 2, 1]

for (index, player) in player.enumerated() {
  print("\(index + 1). \(player) - \(scores[index])")
}


var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8,
"Donna": 6]
print(namesAndScores)
var pairs: [String: Int] = [:]
pairs.reserveCapacity(20)
print(namesAndScores["Anna"]!)

namesAndScores.isEmpty  //  false
namesAndScores.count

var bobData = [
  "name": "Bob",
  "profession": "Card Player",
  "country": "USA"
]
bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"

var bob = ["name": "Bob",
           "profession": "Card Player",
           "country": "USA",
           "state": "CA",
           "city": "San Francisco"]

func printLocation(ofPlayer player: [String: String]) {
  if let state = player["state"], let city = player["city"] {
    print("Player lives in \(city), \(state)")
  }
}

printLocation(ofPlayer: bob)

bobData.updateValue("Bobby", forKey: "name")
bobData["profession"] = "Mailman"
bobData.removeValue(forKey: "state")
bobData["city"] = nil

for (player, score) in namesAndScores {
  print("\(player) - \(score)")
}

for player in namesAndScores.keys {
  print("\(player), ", terminator: "")
    
}

let setOne: Set<Int> = [1]
let someArray = [1, 2, 3, 1]
var explicitSet: Set<Int> = [1, 2, 3, 1]
var someSet = Set([1, 2, 3, 1])
print(someSet)
print(someSet.contains(1))
print(someSet.contains(4))

someSet.insert(5)
let removedElement = someSet.remove(1)
print(removedElement!)


var array5 = [1, 2, 3]

//: Which of the five statements are valid?

array5[0] = array5[1]  // Valid
array5[0...1] = [4, 5] // Valid
for item in array5 { print(item) }  // Valid

//Challenge 2: Remove the first number

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
  var result = array
  if let index = array.firstIndex(of: item) {
    result.remove(at: index)
  }
  return result
}

//Challenge 3: Remove the numbers
var arr = [1,2,9,8,0,4]
func removing(_ item: Int, from array: [Int]) -> [Int] {
 var newArray: [Int] = []
 for candidateItem in array {
   if candidateItem != item {
     newArray.append(candidateItem)
   }
 }
 return newArray
}

print(removing(3, from: arr))

func reversed(_ array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for item in array {
    newArray.insert(item, at: 0)
     
  }
  return newArray
}
print(reversed(arr))

func middle(_ array: [Int]) -> Int? {
  guard !array.isEmpty else {
    return nil
  }
    print((array.count-1)/2)
  return array[(array.count-1)/2]
}

print(middle(arr))

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
  if numbers.isEmpty {
    return nil
  }

  var min = numbers[0]
  var max = numbers[0]
  for number in numbers {
    if number < min {
      min = number
    }
    if number > max {
      max = number
    }
  }
  return (min, max)
}

let dict3: [Int: Int] = [:] // Valid

//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]

dict4["One"]

var dict5 = ["NY": "New York", "CA": "California"]


//: Which of the following are valid?
dict5["NY"]  // Valid
dict5["WA"] = "Washington" // Valid
dict5["CA"] = nil // Valid
//Challenge 8: Long names
func printLongStateNames(in dictionary: [String: String]) {
  for (_, value) in dictionary {
    if value.count > 8 {
      print(value)
    }
  }
}
//Challenge 9: Merge dictionaries

func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
  var newDictionary = dict1
  for (key, value) in dict2 {
    newDictionary[key] = value
  }
  return newDictionary
}
//Challenge 10: Count the characters

func occurrencesOfCharacters(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    if let count = occurrences[character] {
      occurrences[character] = count + 1
    } else {
      occurrences[character] = 1
    }
  }
  return occurrences
}


func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
  var occurrences: [Character: Int] = [:]
  for character in text {
    occurrences[character, default: 0] += 1
  }
  return occurrences
}
//Challenge 11: Unique values

func isInvertible(_ dictionary: [String: Int]) -> Bool {
  var seenValues: Set<Int> = []
  for value in dictionary.values {
    if seenValues.contains(value) {
      return false  // duplicate value detected
    }
    seenValues.insert(value)
  }
  return true
}

//Challenge 12: Removing keys and setting values to nil
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]


nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil  // or nameTitleLookup.removeValue(forKey: "Ray")
