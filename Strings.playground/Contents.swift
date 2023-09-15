import UIKit

var greeting = "Hello, playground"

for char in greeting {
    print(char)
}

let stringLength = greeting.count
print(stringLength)
let fourthChar = greeting[greeting.index(greeting.startIndex, offsetBy: 3)]
print(fourthChar)

let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"

let firstIndex = cafeCombining.startIndex
let firdtChar = cafeCombining[firstIndex]
//let lastIndex = cafeCombining.endIndex
//let lastChar = cafeCombining[lastIndex]

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let fourIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
let fouthChar = cafeCombining[fourIndex]
print(fouthChar)
fourthChar.unicodeScalars.count
fouthChar.unicodeScalars.forEach { codePoint in
    print(codePoint.value)
}

let equal = cafeNormal == cafeCombining

let backward = greeting.reversed()
print(backward)
let secondCharInd = backward.index(backward.startIndex, offsetBy: 1)
let secondChar = backward[secondCharInd]
let backwardNameStr = String(backward)

let raw1 = #"Raw "No Escaping" \(no interpolation!).Use all the \ you want!"#
print(raw1)

let spaceIndex = greeting.firstIndex(of: " ")!
let firstName = greeting[greeting.startIndex..<spaceIndex]

let singleCharacter: Character = "x"
singleCharacter.isASCII

let space: Character = " "
space.isWhitespace
let hexadigit: Character = "d"
hexadigit.isHexDigit

let thaiNine: Character = "๙"
thaiNine.wholeNumberValue


func printCharacterCount(for string: String) {
  guard string.count > 0 else { return }

  var counts: [Character: Int] = [:]

  for i in string {
    counts[i, default: 0] += 1
  }

  let sortedKeys = counts.keys.sorted { counts[$0]! > counts[$1]! }

  let max = counts[sortedKeys.first!]!

  for key in sortedKeys {
    let value = counts[key]!
    let widthOfHashes = (value * 20) / max
    let hashes = String(repeating: "#", count: widthOfHashes)
    print("\(key) : \(hashes) \(value)")
  }
}
printCharacterCount(for: "The quick brown fox jumps over the lazy dog")


//Challenge 2: Word count

func numberOfWords(in sentence: String) -> Int {
  var count = 0
  var inWord = false

  for character in sentence {
    if character == " " {
      if inWord {
        count += 1
      }
      inWord = false
    } else {
      inWord = true
    }
  }

  // We need to add 1 to count the final word if there was at least 1 character
  if inWord {
    count += 1
  }

  return count
}

let wordCount = numberOfWords(in: "The quick brown fox jumps over the lazy dog")
print(wordCount)

//Challenge 3: Name formatter

func sanitized(name: String) -> String? {
  guard let indexOfComma = name.firstIndex(of: ",") else {
    return nil
  }

  let lastNameSubstring = name[..<indexOfComma]
  let firstNameSubstring = name[indexOfComma...].dropFirst(2)

  return firstNameSubstring + " " + lastNameSubstring
}

if let sanitizedName = sanitized(name: "Galloway, Matt") {
  print(sanitizedName)
}


//Challenge 4: Components

func splitting(_ string: String, delimiter: Character) -> [String] {
  var returnArray: [String] = []
  var lastWordIndex = string.startIndex

  for i in string.indices {
    if string[i] == delimiter {
      let substring = string[lastWordIndex..<i]
      returnArray.append(String(substring))
      lastWordIndex = string.index(after: i)
    }
  }

  // Add the final word
  let substring = string[lastWordIndex..<string.endIndex]
  returnArray.append(String(substring))

  return returnArray
}

let pieces = splitting("Dog,Cat,Badger,Snake,Lion", delimiter: ",")
print(pieces)

//Challenge 5: Word reverser

func reversedByWord(sentence: String) -> String {
  var reversedWords = ""
  var lastWordIndex = sentence.startIndex

  for i in sentence.indices {
    if sentence[i] == " " {
      let substring = sentence[lastWordIndex..<i]
      reversedWords += substring.reversed() + " "
      lastWordIndex = sentence.index(after: i)
    }
  }

  // Add the final word
  let substring = sentence[lastWordIndex..<sentence.endIndex]
  reversedWords += substring.reversed()

  return reversedWords
}

let reversed = reversedByWord(sentence: "The quick brown fox jumps over the lazy dog")
print(reversed)
