/* How to test: */
//if 1 <= n && n <= 10^5 { return 0 }
//
//import XCTest
//// Executed 2 tests, with 0 failures (0 unexpected) in 0.006 (0.008) seconds
//class Tests: XCTestCase {
//    private let s = Solution()
//    func testExample1() {
//        XCTAssert(s.subtractProductAndSum(234) == 15) // success
//    }
//    func testExample2() {
//        XCTAssert(s.subtractProductAndSum(4421) == 21) // success
//    }
//}
//Tests.defaultTestSuite.run()


//1480. Running Sum of 1d Array
//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//Return the running sum of nums.
//Constraints:
//* 1 <= nums.length <= 1000
//* -10^6 <= nums[i] <= 10^6
//
//
//class Solution {
//    func runningSum(_ nums: [Int]) -> [Int] {
//        nums.reduce(into: [Int]()) { $0.append(($0.last ?? 0) + $1) }
//    }
//}
//
//
//1672. Richest Customer Wealth
//You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th bank. Return the wealth that the richest customer has.
//A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.\
//Constraints:
//* m == accounts.length
//* n == accounts[i].length
//* 1 <= m, n <= 50
//* 1 <= accounts[i][j] <= 100
//
//class Solution {
//    func maximumWealth(_ accounts: [[Int]]) -> Int {
//        accounts.map { $0.reduce(0, +) }.max()!
//    }
//}
//
//
//
//412. Fizz Buzz
//Given an integer n, return a string array answer (1-indexed) where:
//* answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
//* answer[i] == "Fizz" if i is divisible by 3.
//* answer[i] == "Buzz" if i is divisible by 5.
//* answer[i] == i (as a string) if none of the above conditions are true.
//Constraints:
//* 1 <= n <= 104
//
//class Solution {
//    func fizzBuzz(_ n: Int) -> [String] {
//       return (1...n).map {
//            switch ($0%3, $0%5) {
//                case (0, 0): return "FizzBuzz"
//                case (0, _): return "Fizz"
//                case (_, 0): return "Buzz"
//                default: return "\($0)"
//            }
//        }
//    }
//}
//
//
//
//
//1342. Number of Steps to Reduce a Number to Zero
//Given an integer num, return the number of steps to reduce it to zero.
//In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
//class Solution {
//    func numberOfSteps (_ num: Int) -> Int {
//        String(num, radix: 2).reduce(0) { $1 == "1" ? $0 + 2 : $0 + 1 } - 1
//    }
//}
//
//Example for understanding:
//Reduce sums up the results, thus, when we radix number 2, with 2, it outputs 10. With that line, 10 goes through check $1, it’s not equal to 1, thus, 1 is added to 1, it goes by 20 - 1 = 19 again,
//var primes = [3, 7, 31, 127]
//var sum = primes.reduce((0) - 1) { (result, item) in
//  return result + item
//}
//print(sum)
////Output: 167



//383. Ransom Note
//Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
//Each letter in magazine can only be used once in ransomNote.
//Constraints:
//* 1 <= ransomNote.length, magazine.length <= 105
//* ransomNote and magazine consist of lowercase English letters.
//
//class Solution {
//    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//        var dict = [String: Int]()
//        var letterBank = [Int](repeating: 0, count: 26)
//
//        let baseIndex = Int("a".utf8.first!)
//        for char in magazine.utf8 {
//            let index = Int(char) - baseIndex
//            letterBank[index] += 1
//        }
//        for char in ransomNote.utf8 {
//            let index = Int(char) - baseIndex
//            letterBank[index] -= 1
//            if letterBank[index] < 0 {
//                return false
//            }
//        }
//
//        return true
//
//    }
//}
//
//
//
//
//1281. Subtract the Product and Sum of Digits of an Integer
//Given an integer number n, return the difference between the product of its digits and the sum of its digits.
//Example 1:
//Input: n = 234
//Output: 15
//Explanation:
//Product of digits = 2 * 3 * 4 = 24
//Sum of digits = 2 + 3 + 4 = 9
//Result = 24 - 9 = 15
//
//class Solution {
//    func subtractProductAndSum(_ number: Int) -> Int {
//        return "\(number)".compactMap { $0.wholeNumberValue }.reduce(1, *) - "\(number)".compactMap { $0.wholeNumberValue }.reduce(0, +)
//    }
//}
//
//class Solution {
//    func subtractProductAndSum(_ n: Int) -> Int {
//        if 1 <= n && n <= 10^5 { return 0 }
//        var cp = n, products = [Int]()
//        while cp > 0 {
//            products.insert(cp % 10, at: 0)
//            cp /= 10
//        }
//        let product = products.reduce(1, *)
//        let sum = products.reduce(0, +)
//        return product - sum
//    }
//}
//
//
//2520. Count the Digits That Divide a Number
//Given an integer num, return the number of digits in num that divide num.
//An integer val divides nums if nums % val == 0.
//
//Example 3:
//Input: num = 1248
//Output: 4
//Explanation: 1248 is divisible by all of its digits, hence the answer is 4.
//
//class Solution {
//    func countDigits(_ n: Int) -> Int {
//        String(n).compactMap(\.wholeNumberValue).filter{ n.isMultiple(of: $0) }.count
//    }
//}
//
//class Solution {
//    func countDigits(_ num: Int) -> Int {
//        String(num)
//            .map { Int(String($0))! }
//            .lazy
//            .filter { num % $0 == 0 }
//            .count
//    }
//}
//
//
//
//
//
//1486. XOR Operation in an Array
//You are given an integer n and an integer start.
//Define an array nums where nums[i] = start + 2 * i (0-indexed) and n == nums.length.
//Return the bitwise XOR of all elements of nums.
//Example 1:
//Input: n = 5, start = 0
//Output: 8
//Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
//Where "^" corresponds to bitwise XOR operator.
//
//* 1 <= n <= 1000
//* 0 <= start <= 1000
//* n == nums.length
//
//
//
//class Solution {
//    func xorOperation(_ n: Int, _ start: Int) -> Int {
//        return (0..<n).map({ start + $0 * 2 }).reduce(0, ^)
//    }
//}
//
//
//class Solution {
//    func xorOperation(_ n: Int, _ start: Int) -> Int {
//        var res = 0
//        for i in 0..<n {
//            res ^= start + 2 * i
//        }
//        return res
//    }
//}
