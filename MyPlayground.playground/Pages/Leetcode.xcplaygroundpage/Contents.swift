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




//1688. Count of Matches in Tournament
//You are given an integer n, the number of teams in a tournament that has strange rules:
//* If the current number of teams is even, each team gets paired with another team. A total of n / 2 matches are played, and n / 2 teams advance to the next round.
//* If the current number of teams is odd, one team randomly advances in the tournament, and the rest gets paired. A total of (n - 1) / 2 matches are played, and (n - 1) / 2 + 1 teams advance to the next round.
//Return the number of matches played in the tournament until a winner is decided.
//
//Example 1:
//Input: n = 7
//Output: 6
//Explanation: Details of the tournament:
//- 1st Round: Teams = 7, Matches = 3, and 4 teams advance.
//- 2nd Round: Teams = 4, Matches = 2, and 2 teams advance.
//- 3rd Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
//Total number of matches = 3 + 2 + 1 = 6.
//Example 2:
//Input: n = 14
//Output: 13
//Explanation: Details of the tournament:
//- 1st Round: Teams = 14, Matches = 7, and 7 teams advance.
//- 2nd Round: Teams = 7, Matches = 3, and 4 teams advance.
//- 3rd Round: Teams = 4, Matches = 2, and 2 teams advance.
//- 4th Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
//Total number of matches = 7 + 3 + 2 + 1 = 13.
//
//Constraints:
//* 1 <= n <= 200
//
//
//class Solution {
//    func numberOfMatches(_ n: Int) -> Int {
//        var n = n, m = 0
//        while n > 1 {
//            m += n / 2
//            n = n / 2 + n % 2
//        }
//        return m
//    }
//}



//1304. Find N Unique Integers Sum up to Zero
//Given an integer n, return any array containing n unique integers such that they add up to 0.
// 
//Example 1:
//Input: n = 5
//Output: [-7,-1,1,3,4]
//Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].
//Example 2:
//Input: n = 3
//Output: [-1,0,1]
//Example 3:
//Input: n = 1
//Output: [0]
// 
//Constraints:
//* 1 <= n <= 1000
//
//
//class Solution {
//    func sumZero(_ n: Int) -> [Int] {
//        
//        var arry = [Int]()
//        var sum = 0
//        for number in 1..<n  {
//            arry.append(number)
//            sum += number
//        }
//        arry.append(-sum)
//        return arry
//    }
//}
//
//
//
//class Solution {
//    func sumZero(_ n: Int) -> [Int] {
//        if n == 1 { return [0] }
//        return Array(1...Int(n / 2)) + Array(-Int(n / 2)...(-1)) + (n % 2 == 0 ? [] : [0])
//    }
//}
//
//
//// [-2,-1,0,1,2] odd
//// [-2,-1,1,2] even
//// [-1,0,1] odd
//// [-1,1] even
//// [0]
////
//
//
//
//
//
//
//
//1837. Sum of Digits in Base K
//Given an integer n (in base 10) and a base k, return the sum of the digits of n after converting n from base 10 to base k.
//After converting, each digit should be interpreted as a base 10 number, and the sum should be returned in base 10.
// 
//Example 1:
//Input: n = 34, k = 6
//Output: 9
//Explanation: 34 (base 10) expressed in base 6 is 54. 5 + 4 = 9.
//Example 2:
//Input: n = 10, k = 10
//Output: 1
//Explanation: n is already in base 10. 1 + 0 = 1.
// 
//Constraints:
//* 1 <= n <= 100
//* 2 <= k <= 10
//
//
//
//class Solution {
//    func sumBase(_ n: Int, _ k: Int) -> Int {
//        return String(n, radix: k).compactMap { c in Int(String(c)) }.reduce(0, +)
//    }
//}
//
//
//
//
//class Solution {
//    func sumBase(_ n: Int, _ k: Int) -> Int {
//        var n = n
//        var reults: Int = 0
//
//        while (n > 0) {
//            reults += n % k
//            n /= k
//        }
//        
//        return reults
//    }
//}
//
//
//
//
//
//
//
//2169. Count Operations to Obtain Zero
//You are given two non-negative integers num1 and num2.
//In one operation, if num1 >= num2, you must subtract num2 from num1, otherwise subtract num1 from num2.
//* For example, if num1 = 5 and num2 = 4, subtract num2 from num1, thus obtaining num1 = 1 and num2 = 4. However, if num1 = 4 and num2 = 5, after one operation, num1 = 4 and num2 = 1.
//Return the number of operations required to make either num1 = 0 or num2 = 0.
//
//Example 1:
//Input: num1 = 2, num2 = 3
//Output: 3
//Explanation:
//- Operation 1: num1 = 2, num2 = 3. Since num1 < num2, we subtract num1 from num2 and get num1 = 2, num2 = 3 - 2 = 1.
//- Operation 2: num1 = 2, num2 = 1. Since num1 > num2, we subtract num2 from num1.
//- Operation 3: num1 = 1, num2 = 1. Since num1 == num2, we subtract num2 from num1.
//Now num1 = 0 and num2 = 1. Since num1 == 0, we do not need to perform any further operations.
//So the total number of operations required is 3.
//Example 2:
//Input: num1 = 10, num2 = 10
//Output: 1
//Explanation:
//- Operation 1: num1 = 10, num2 = 10. Since num1 == num2, we subtract num2 from num1 and get num1 = 10 - 10 = 0.
//Now num1 = 0 and num2 = 10. Since num1 == 0, we are done.
//So the total number of operations required is 1.
// 
//Constraints:
//* 0 <= num1, num2 <= 105
//
//
//func countOperations(_ num1: Int, _ num2: Int) -> Int {
//    var num1 = num1, num2 = num2, result = 0
//    while num1 != 0 && num2 != 0 {
//        if num1 > num2 {
//            num1 = num1 - num2
//        } else {
//            num2 = num2 - num1
//        }
//        result += 1
//    }
//    return result
//}
//
//
//
//class Solution {
//    func countOperations(_ num1: Int, _ num2: Int) -> Int {
//        return num1*num2 == 0 ? 0 : num1 / num2 + countOperations(num2, num1 % num2)
//    }
//}
//
//
//class Solution {
//    func countOperations(_ num1: Int, _ num2: Int, _ c: Int = 0) -> Int {
//        guard num1 * num2 != 0 else { return c }
//        return countOperations(max(num1, num2) - min(num1, num2), min(num1, num2), c + 1)
//    }
//}
//
//
//
//
//908. Smallest Range I
//You are given an integer array nums and an integer k.
//In one operation, you can choose any index i where 0 <= i < nums.length and change nums[i] to nums[i] + x where x is an integer from the range [-k, k]. You can apply this operation at most once for each index i.
//The score of nums is the difference between the maximum and minimum elements in nums.
//Return the minimum score of nums after applying the mentioned operation at most once for each index in it.
// 
//Example 1:
//Input: nums = [1], k = 0
//Output: 0
//Explanation: The score is max(nums) - min(nums) = 1 - 1 = 0.
//Example 2:
//Input: nums = [0,10], k = 2
//Output: 6
//Explanation: Change nums to be [2, 8]. The score is max(nums) - min(nums) = 8 - 2 = 6.
//Example 3:
//Input: nums = [1,3,6], k = 3
//Output: 0
//Explanation: Change nums to be [4, 4, 4]. The score is max(nums) - min(nums) = 4 - 4 = 0.
// 
//Constraints:
//* 1 <= nums.length <= 104
//* 0 <= nums[i] <= 104
//* 0 <= k <= 104
//
//
//
//
//class Solution {
//    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
//        var min = A[0], max = A[0]
//        for a in A {
//            if min > a { min = a }
//            if max < a { max = a }
//        }
//        return max - min > 2 * K ? max - min - 2 * K : 0
//    }
//}
//
//
//class Solution {
//    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
//        max(0, nums.max()! - nums.min()! - 2 * k)
//    }
//}
//
//
//
//class Solution {
//    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
//        return max(0, (A.reduce(into: Array(repeating: A[0], count: 3)) { $0[0] = min($0[0], $1); $0[1] = max($0[1], $1); $0[2] = $0[1] - $0[0] })[2] - 2 * K)
//    }
//}
