import UIKit


 */


// PRINT
print("Hello, Swift!")


// ARITHMETIC
2 + 6

10 - 2

2 * 4

24 / 3

2+6

22 / 7

22.0 / 7.0

28 % 10

(28.0).truncatingRemainder(dividingBy: 10.0)

1 << 3

32 >> 2

((8000 / (5 * 10)) - 32) >> (29 % 5)

350 / 5 + 2

350 / (5 + 2)


// MATH FUNCTIONS
sin(45 * Double.pi / 180)

cos(135 * Double.pi / 180)

(2.0).squareRoot()

max(5, 10)

min(-5, -10)

max((2.0).squareRoot(), Double.pi / 2)


// VARIABLES & CONSTANTS
let number: Int = 10
//number = 0 /* Cannot assign to value: 'constantNumber' is a 'let' constant */

let pi: Double = 3.14159

var variableNumber: Int = 42
variableNumber = 0
variableNumber = 1_000_000

var 🐶💩: Int = -1


// ARITHMETIC WITH VARIABLES
var counter: Int = 0
counter += 1
counter -= 1

counter = 10
counter *= 3
counter /= 2

/*:
### Challenge 1: Variables
 Declare a constant `Int` called `myAge` and set it equal to your age. Also declare an `Int` variable called `dogs` and set it equal to the number of dogs you own. Then imagine you bought a new puppy and increment the `dogs` variable by one.
 */
let myAge: Int = 34
var dogs: Int = 2
dogs += 1

/*:
### Challenge 2: Make it compile
 Given the following code:
 ```swift
 age = 16
 print(age)
 age = 30
 print(age)
 ```
  Declare `age` so that it compiles.  Did you use `var` or `let`?
*/

var age: Int = 16 // it is a var not a let
print(age)
age = 30
print(age)

/*:
### Challenge 3: Compute the answer
 Consider the following code:

```swift
let x: Int = 46
let y: Int = 10
```
 Work out what `answer` equals when you add the following lines of code:
```swift
// 1
let answer1: Int = (x * 100) + y
// 2
let answer2: Int = (x * 100) + (y * 100)
// 3
let answer3: Int = (x * 100) + (y / 10)
```
*/
let x: Int = 46
let y: Int = 10
let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)

/*:
### Challenge 4: Add parentheses
 Add as many parentheses to the following calculation, ensuring that it doesn't change the result of the calculation.
 */
8 - 4 * 2 + 6 / 3 * 4
/*:
 Solution:
 */
8 - (4 * 2) + ((6 / 3) * 4)

/*:
### Challenge 5: Average rating
 Declare three constants called `rating1`, `rating2` and `rating3` of type `Double` and assign each a value. Calculate the average of the three and store the result in a constant named `averageRating`.
 */
let rating1: Double = 4
let rating2: Double = 2
let rating3: Double = 5
let averageRating: Double = (rating1 + rating2 + rating3) / 3
/*:
 Bonus: why is it important that the ratings are of type `Double`?
 
 Solution:
 If they were of type `Int`, then you could only create an average that is also an `Int` without converting them first to a `Double`, and the average may not be a whole number.
*/

/*:
### Challenge 6: Electrical power
 The power of an electrical appliance can be calculated by multiplying the voltage by the current.

 Declare a constant named `voltage` of type `Double` and assign it a value. Then declare a constant called `current` of type `Double` and assign it a value. Finally calculate the power of the electrical appliance you've just created storing it in a constant called `power` of type `Double`.
 */
let voltage: Double = 240.0
let current: Double = 7.5
let power: Double = voltage * current

/*:
### Challenge 7: Electrical resistance
 The resistance of such an appliance can then be calculated (in a long-winded way) as the power divided by the current squared.

 Calculate the resistance and store it in a constant called `resistance` of type `Double`.
 */
let resistance = power / (current * current)

/*:
### Challenge 8: Random integer
 You can create a random integer number by using the function `arc4random()`. This picks a number anywhere between 0 and 4294967295. You can use the modulo operator to truncate this random number to whatever range you want.

 Declare a constant `randomNumber` and assign it a random number generated with `arc4random()`. Then calculate a constant called `diceRoll` and use the random number you just found to create a random number between 1 and 6.
 */
let randomNumber = arc4random()
let diceRoll = 1 + randomNumber % 6

/*:
### Challenge 9: Quadratic equations
 A quadratic equation is something of the form:

   `a⋅x² + b⋅x + c = 0`

 The values of `x` which satisfy this can be solved by using the equation:

   `x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)`

 Declare three constants named `a`, `b` and `c` of type `Double`.  Then calculate the two values for `x` using the equation above (noting that the ± means plus or minus — so one value of `x` for each). Store the results in constants called `root1` and `root2` of type `Double`.
 */
let a: Double = 2.0
let b: Double = 3.0
let c: Double = 1.0
let root1: Double = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)
let root2: Double = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)


/*:
 ## Expressions, Variables & Constants Mini-exercises
 ### Exercise 1
Declare a constant of type `Int` called `myAge` and set it to your age.
 */
let myAge: Int = 25

/*:
 ### Exercise 2
 Declare a variable of type `Double` called `averageAge`. Initially, set it to your own age. Then, set it to the average of your age and my own age of `30`.
 */
var averageAge: Double = 25
averageAge = (averageAge + 30) / 2

/*:
 ### Exercise 3
 Create a constant called `testNumber` and initialize it with whatever integer you’d like. Next, create another constant called `evenOdd` and set it equal to `testNumber` modulo 2. Now change `testNumber` to various numbers. What do you notice about `evenOdd`?
 */
let testNumber: Int = 42
let evenOdd: Int = testNumber % 2
// 'evenOdd' is 0 when 'testNumber' is even. 'evenOdd' is 1 when 'testNumber' is odd.

/*:
 ### Exercise 4
 Create a variable called `answer` and initialize it with the value `0`. Increment it by `1`. Add `10` to it. Multiply it by `10`. Then, shift it to the right by `3`. After all of these operations, what’s the answer?
 */
var answer: Int = 0
answer += 1
answer += 10
answer *= 10
answer >>= 3
answer
// answer = 13
