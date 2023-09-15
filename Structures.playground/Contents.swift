import UIKit


let restaurantLoc = (3,3)
let restaurantRange = 2.5

let otherrestaurantLocatio = (8,8)
let otherRestaurantRange = 2.5

func distance(from source: (x: Int, y: Int), to target: (x:Int, y: Int)) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

func isInDeliveryRange(location:(x:Int, y: Int)) -> Bool {
    let deliverydistance = distance(from: location, to: restaurantLoc)
    let secondaryDeliveryDist = distance(from: location, to: restaurantLoc)
    return deliverydistance < restaurantRange || secondaryDeliveryDist < otherRestaurantRange
}

isInDeliveryRange(location: (x: 5, y: 5))


struct Location {
    let x: Int
    let y: Int
}

let storeLocation = Location(x: 3, y: 3)

// Mini Exercises
//Write a structure that represents a pizza order. Include toppings, size and any other option you’d want for a pizza.
struct Pizza {
  let size: Int // Inches
  let toppings: [String] // Pepperoni, Mushrooms
  let style: String // Thick, Thin, Hand-tossed
}

let pizza = Pizza(size: 14, toppings: ["Pepperoni", "Mushrooms", "Anchovies"], style: "Thin")

func distance(from source: Location, to target: Location) -> Double {
  let distanceX = Double(source.x - target.x)
  let distanceY = Double(source.y - target.y)
  return sqrt(distanceX * distanceX + distanceY * distanceY)
}
//
//struct DeliveryArea {
//  let center: Location
//  var radius: Double
//
//  func contains(_ location: Location) -> Bool {
//    distance(from: center, to: location) < radius
//  }
//
//  func overlaps(with area: DeliveryArea) -> Bool {
//    distance(from: center, to: area.center) <= (radius + area.radius)
//  }
//}

let area1 = DeliveryArea(center: Location(x: 3, y: 3), radius: 2.5)
let area2 = DeliveryArea(center: Location(x: 8, y: 8), radius: 2.5)
area1.overlaps(with: area2)

let area3 = DeliveryArea(center: Location(x: 4, y: 4), radius: 2.5)
let area4 = DeliveryArea(center: Location(x: 7, y: 7), radius: 2.5)
area3.overlaps(with: area4)

var a = 5
var b = a

a = 10
print(a,b)

var area5 = DeliveryArea(center: Location(x: 3, y: 3), radius: 2.5)
var area6 = area5

area5.radius
area6.radius

area5.radius = 4

area5.radius
area6.radius

public protocol CustomStringConvertible {

  var description: String { get }
}


struct DeliveryArea: CustomStringConvertible {
  let center: Location
  var radius: Double
  var description: String {
    """
    Area with center: (x: \(center.x), y: \(center.y)),
    radius: \(radius)
    """
}
  func contains(_ location: Location) -> Bool {
    distance(from: center, to: location) < radius
  }
  func overlaps(with area: DeliveryArea) -> Bool {
    distance(from: center, to: area.center) <=
    (radius + area.radius)
  }
}


struct Fruit {
    let kind: String
    let weight: Int
}

let truck: [Fruit] = [
    Fruit(kind: "Apple", weight: Int.random(in: 70...100)),
    Fruit(kind: "Pear", weight: Int.random(in: 70...100)),
    Fruit(kind: "Apple", weight: Int.random(in: 70...100)),
    Fruit(kind: "Orange", weight: Int.random(in: 70...100)),
    Fruit(kind: "Pear", weight: Int.random(in: 70...100)),
    Fruit(kind: "Apple", weight: Int.random(in: 70...100))
]

var pears = [Fruit]()
var apples = [Fruit]()
var oranges = [Fruit]()

var totalProcessedWeight = 0

func receive(_ truck: [Fruit]) {
    for fruit in truck {
        switch fruit.kind {
        case "Pear" :
            pears.append(fruit)
        case "Apple":
            apples.append(fruit)
        case "Orange":
            oranges.append(fruit)
        default:
            fatalError("Fruit type not found")
        }
        totalProcessedWeight += fruit.weight
    }
}
receive(truck)

print("Total weight:", totalProcessedWeight, "grams", "\n---")
print("Quantity of pears:\t\t", pears.count)
print("Quantity of apples:\t\t", apples.count)
print("Quantity of oranges:\t", oranges.count, "\n")


typealias Size = String
let small: Size = "Small"
let medium: Size = "Medium"
let large: Size = "Large"
let xLarge: Size = "XLarge"

typealias Material = String
let cotton: Material = "Cotton"
let polyester: Material = "Polyester"
let wool: Material = "Wool"

typealias Color = String

struct TShirt {
    let size: Size
    let color: Color
    let material: Material
    
    func cost() -> Double {
        let basePrice = 10.0
        
        let sizeMultiplier: Double
        
        switch size {
        case small, medium:
            sizeMultiplier = 1.0
            
        case large, xLarge:
            sizeMultiplier = 1.1
        default:
            sizeMultiplier = 1.2
        }
        
        let materialMultiplier:Double
        
        switch material {
        case cotton:
            materialMultiplier = 1.0
        case polyester:
            materialMultiplier = 1.1
        case wool:
            materialMultiplier = 1.5
        default:
            materialMultiplier = 2.0
        }
        
        return basePrice * sizeMultiplier * materialMultiplier
    }
}

TShirt(size: medium, color: "Green", material: cotton).cost()
TShirt(size: xLarge, color: "Gray", material: wool).cost()


struct Coordinate {
    let x: Int
    let y: Int
}

struct Ship {
    let origin: Coordinate
    let direction: String
    let length: Int
    
    func isHiT(coordinate: Coordinate) -> Bool {
        if direction == "Right" {
            return origin.y == coordinate.y &&
            coordinate.x >= origin.x &&
            coordinate.x - origin.x < length
        } else {
            return origin.x == coordinate.x &&
            coordinate.y >= origin.y &&
            coordinate.y - origin.y < length
        }
    }
}

struct Board {
    
    var ships: [Ship] = []
    
    func fire(location: Coordinate) -> Bool {
        for ship in ships {
            if ship.isHiT(coordinate: location) {
                print("Hit!")
                return true
            }
            
        }
        return false
    }
}

let patrolBoat = Ship(origin: Coordinate(x: 2, y: 2), direction: "Right", length: 2)
let battleShip = Ship(origin: Coordinate(x: 5, y: 3), direction: "Down", length: 4)
let submarine = Ship(origin: Coordinate(x: 0, y: 0), direction: "Down", length: 3)


var board = Board()
board.ships.append(contentsOf: [patrolBoat,battleShip,submarine])

board.fire(location: Coordinate(x: 2, y: 2))
board.fire(location: Coordinate(x: 2, y: 3))
board.fire(location: Coordinate(x: 5, y: 6))
board.fire(location: Coordinate(x: 5, y: 7))
