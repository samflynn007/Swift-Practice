import UIKit

// Two Sum

//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//
var num = [2,7,11,15]
var target  = 9
//func twoSum(nums: [Int]) -> [Int] {
//    for i in 0..<nums.count {
//        let val = nums[i]
//        for j in i+1..<nums.count {
//            if val + nums[j] == target {
//                return [i,j]
//            }
//        }
//    }
//  return []
//}
//twoSum(nums: nums)

// linear solution
func twoSum(nums: [Int]) -> [Int] {
    var map: [Int: Int] = [:]
    
    for (i,val) in nums.enumerated() {
        
        let diff = target - val
        if let j = map[diff] {
            return [i,j]
        }
        map[val] = i
    }
    return []
}


var alphas = "abc"
var str = ""

for i in alphas {
    str = "\(i)" + str
}
print(str)

var s = ["h","e","l","l","0"]
//var str2 = ""
//for i in s {
//    str2 = "\(i)" + str2
//}
//print(str2)

// pointer reverse

var lefts = 0
var rights = s.count - 1

while lefts < rights {
   (s[lefts], s[rights]) = (s[rights], s[lefts])
    lefts += 1
    rights -= 1
}
print(s)

// contains duplicate
//Input: nums = [1,2,3,1]
//Output: true

var numb = [1,2,3,1]

func containsDup(_ nums: [Int]) -> Bool {
    return nums.count > Set(nums).count
}

containsDup(numb)


// Best time to buy stock
//Input: prices = [7,1,5,3,6,4]
//Output: 5
//var   = [7,1,5,3,6,4]
//func bestime(prices: [Int]) -> Int {
//    var maxProfit = 0
//    var min = Int.max
//
//    for price in prices {
//        if price < min {
//            min = price
//        } else if price - min > maxProfit {
//            maxProfit = price - min
//        }
//    }
//    return maxProfit
//}
//var pricesArray = [7,1,5,3,6,4]
//bestime(prices: pricesArray)

//Best time to buy stock II
var prices = [7,1,5,3,6,4]
//Output: 7
func maxStockProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    
    for i in 0..<prices.count-1 {
        
        if prices[i] < prices[i+1] {
            maxProfit += prices[i+1] - prices[i]
        }
        
    }
    return maxProfit
}

print(maxStockProfit(prices))


//Longest palindrome substring
//Input: s = "babad"
//Output: "bab"
//Explanation: "aba" is also a valid answer.
// Total time O(n^2) loop * while, space O(n)
  func longestPalindrome(_ s: String) -> String {
      // len = the palindrome substring length, start = the start index of palindrome substring
      var len: Int = 0, start = 0
      // convert s to a arrary contains all characters. NOTE: this is super important, a lot faster than use string index
      // space O(n)
      let arr = Array(s)
      
      // time O(n)
      for i in 0 ..< arr.count {
          // calculate the current palindrome substring length. (i, i) is odd, (i, i + 1) is even
           let cur = max(getLen(arr, i, i), getLen(arr, i, i + 1))
          // only update if current length is longer
          if cur > len {
              len = cur
              // why (len - 1) because for even & odd we want same result, e.g(1-1)/2 = 0, (2-1)/2 = 0, (3-1)/2 = 1, (4-1)/2 = 1...ect
              start = i - (len - 1) / 2
          } else if i > arr.count / 2 && len >= i {
              // no need to continue because it is not possible to get longer ones
              break
          }
      }
      return String(arr[start ..< start + len])
  }

   // get the length of the palindromic substring, <---l center r--->
  // time O(n)
  private func getLen(_ arr: [Character], _ l: Int, _ r: Int) -> Int {
      var l = l, r = r
      while l >= 0 && r < arr.count && arr[l] == arr[r] {
          l -= 1; r += 1
      }
      return r - l - 1
  }

func isValid(_ s: String) -> Bool {
    let rule = Array("()[]{}")
    var stack = [Character]()
    for (_, char) in s.enumerated() {
        if rule.firstIndex(of: char)! % 2 == 0 {    // open brackets
            stack.append(char)
        } else {                            // close brackets
            if stack.isEmpty {
                return false
            } else {
                if rule.firstIndex(of: char)! - rule.firstIndex(of: stack.last!)! == 1 {  //barckets matched
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
    }
    return stack.isEmpty
}
//20. Valid Parentheses

func isValidParentheses(_ s: String) -> Bool {
      let rule = Array("()[]{}")
      var stack = [Character]()
      for (_, char) in s.enumerated() {
        if rule.firstIndex(of: char)! % 2 == 0 {    // open brackets
            stack.append(char)
        } else {                            // close brackets
            if stack.isEmpty {
                return false
            } else {
                if rule.firstIndex(of: char)! - rule.firstIndex(of: stack.last!)! == 1 {  //barckets matched
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
    }
    return stack.isEmpty
    }

// container

func maxArea(_ height: [Int]) -> Int {
    var maxRes = 0
    var left = 0
    var right = height.count - 1
    
    while left < right {
        let minHeight = min(height[left], height[right])
        
        maxRes = max(maxRes, (right - left) * minHeight)
        
        if minHeight == height[left] {
            left += 1
        } else {
            right -= 1
        }
    }
    return maxRes
}
var arraysRearrange = [12,11, -13, -5, 6, -7, 5, -3, -6]

func rearrangeNegativePositive(_ arr: inout [Int]) -> [Int] {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        if arr[left] < 0 {
            left += 1
        } else if arr[right] >= 0 {
            right -= 1
        } else {
            arr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    return arr
}

print(rearrangeNegativePositive(&arraysRearrange))

//func rearrangeNegativePositive(_ arr: inout [Int]) {
//    var i = 0
//
//    // Move all negative numbers to the beginning
//    for j in 0..<arr.count {
//        if arr[j] < 0 {
//            if i != j {
//                // Swap elements without using swapAt
//                arr[i] = arr[i] + arr[j]
//                arr[j] = arr[i] - arr[j]
//                arr[i] = arr[i] - arr[j]
//            }
//            i += 1
//        }
//    }
//}


//You have been given a Binary search tree, you need to traverse through the tree. And check if there are two nodes present in the tree such that they add up to a number Target.
//write code in swift
class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
    var seen = Set<Int>()

    func dfs(_ node: TreeNode?) -> Bool {
        guard let node = node else { return false }

        // Check if there's a complement of the current node's value
        if seen.contains(k - node.val) {
            return true
        }

        // Add the current node's value to the set
        seen.insert(node.val)

        // Recursively check the left and right subtrees
        return dfs(node.left) || dfs(node.right)
    }

    return dfs(root)
}
