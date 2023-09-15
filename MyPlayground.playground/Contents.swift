import UIKit

let sp = (5,10)
switch sp {
case let (x,y) where x == y/2 && 0<y && x<y:
    print("1st")
    fallthrough
case(_,10):
    print("2nd")
case (5,_):
     print("3rd")
default:
    print("def")
}

let A=60;
let B=13
let C = A&B

var fullName  =  "Venkatesh Nellore"
 
let splitArr = fullName.split(separator: " ")

//for i in splitArr {
//    print(i.first)
//}


print(splitArr.map {
    $0.first
    
})


var index = 10

switch index {
   case 10 :
      print( "Value of index is 100")
      fallthrough
   case 100:
      print( "Value of index is either 10 or 15")
   case 5 :
      print( "Value of index is 5")
   default :
      print( "default case")
}
